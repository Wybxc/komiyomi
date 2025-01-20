import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:komiyomi/providers/storage.dart';

part 'graphql.g.dart';

class HttpBasicAuth {
  final String urlBase;
  final String? username;
  final String? password;

  const HttpBasicAuth({
    required this.urlBase,
    this.username,
    this.password,
  });

  Uri get baseUri {
    final uri = Uri.parse(urlBase);
    final path = uri.path.replaceAll(RegExp(r'/+$'), '');
    return uri.replace(path: path);
  }

  Map<String, String> get headers {
    final headers = <String, String>{};
    if (username != null && password != null) {
      final auth = '$username:$password';
      headers['Authorization'] = 'Basic ${base64Encode(utf8.encode(auth))}';
    }
    return headers;
  }
}

@riverpod
class LoginSettings extends _$LoginSettings {
  static const _urlBaseKey = 'graphql_url_base';
  static const _usernameKey = 'graphql_username';
  static const _passwordKey = 'graphql_password';

  @override
  HttpBasicAuth? build() {
    final urlBase = ref.watch(strPrefProvider(_urlBaseKey));
    final username = ref.watch(strPrefProvider(_usernameKey));
    final password = ref.watch(strPrefProvider(_passwordKey));

    if (urlBase == null) {
      return null;
    }
    return HttpBasicAuth(
      urlBase: urlBase,
      username: username,
      password: password,
    );
  }

  Future<void> set(HttpBasicAuth settings) async {
    final urlBaseNotif = ref.read(strPrefProvider(_urlBaseKey).notifier);
    final usernameNotif = ref.read(strPrefProvider(_usernameKey).notifier);
    final passwordNotif = ref.read(strPrefProvider(_passwordKey).notifier);

    await urlBaseNotif.set(settings.urlBase);
    await usernameNotif.set(settings.username);
    await passwordNotif.set(settings.password);
  }
}

class LoggingLink extends Link {
  final Link _link;
  final Logger _logger = Logger('GraphQL');

  LoggingLink(this._link) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      developer.log(
        record.message,
        time: record.time,
        name: record.loggerName,
        level: record.level.value,
        error: record.error,
        stackTrace: record.stackTrace,
      );
    });
  }

  @override
  Stream<Response> request(Request request, [forward]) async* {
    final operation = request.operation.operationName ?? 'unnamed operation';
    _logger.info('Executing GraphQL $operation');
    _logger.fine('Variables: ${request.variables}');

    try {
      await for (final response in _link.request(request, forward)) {
        if (response.errors != null) {
          _logger.warning(
            'GraphQL errors in $operation: ${response.errors?.map((e) => e.message).join(", ")}',
          );
        } else {
          _logger.info('Successfully completed $operation');
        }
        yield response;
      }
    } catch (e, stack) {
      _logger.severe('Error executing $operation', e, stack);
      rethrow;
    }
  }
}

class LoginState {
  final GraphQLClient client;
  final Uri baseUri;
  final Map<String, String> headers;

  const LoginState({
    required this.client,
    required this.baseUri,
    required this.headers,
  });

  String getFullUrl(String resourcePath) {
    return baseUri.resolve(resourcePath).toString();
  }

  static LoginState connect(HttpBasicAuth settings) {
    final baseUri = settings.baseUri;
    final headers = settings.headers;

    final endpoint = baseUri.resolve('/api/graphql').toString();
    final httpLink = HttpLink(
      endpoint,
      defaultHeaders: headers,
      followRedirects: true,
    );
    final link = LoggingLink(httpLink);
    final client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );

    return LoginState(
      client: client,
      baseUri: baseUri,
      headers: headers,
    );
  }
}

@Riverpod(keepAlive: true)
class GraphQL extends _$GraphQL {
  @override
  LoginState? build() {
    final settings = ref.watch(loginSettingsProvider);
    if (settings == null) {
      return null;
    }
    return LoginState.connect(settings);
  }

  Future<void> connect(HttpBasicAuth settings) async {
    await ref.read(loginSettingsProvider.notifier).set(settings);
    state = LoginState.connect(settings);
  }

  void disconnect() {
    state = null;
  }
}

class LoginStateListener extends ValueNotifier<bool> {
  LoginStateListener(super.value);

  bool get isConnected => value;

  void onLoginStateChange(bool isConnected) {
    value = isConnected;
  }
}

final loginStateListenerProvider = ChangeNotifierProvider((ref) {
  final initialLoginState = ref.read(graphQLProvider);
  final listener = LoginStateListener(initialLoginState != null);
  ref.listen(graphQLProvider, (_, state) {
    listener.onLoginStateChange(state != null);
  });
  return listener;
});
