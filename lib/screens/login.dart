import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:komiyomi/constants/layout.dart';
import 'package:komiyomi/localizations.dart';
import 'package:komiyomi/providers/graphql.dart';

class ReactiveLoginTextField extends HookWidget {
  final String formControlName;
  final String label;
  final IconData icon;
  final bool isPassword;
  final TextInputAction? textInputAction;

  const ReactiveLoginTextField({
    super.key,
    required this.formControlName,
    required this.label,
    required this.icon,
    this.isPassword = false,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    final obscurePassword = useState(true);

    return ReactiveTextField(
      formControlName: formControlName,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(obscurePassword.value
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () => obscurePassword.value = !obscurePassword.value,
              )
            : null,
      ),
      obscureText: isPassword && obscurePassword.value,
      textInputAction: textInputAction,
      enableInteractiveSelection: true,
      onSubmitted: (_) => FocusScope.of(context).nextFocus(),
    );
  }
}

class AuthFieldsWidget extends HookWidget {
  final FormGroup form;
  final bool isWideScreen;

  const AuthFieldsWidget({
    super.key,
    required this.form,
    required this.isWideScreen,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final fields = [
      ReactiveLoginTextField(
        formControlName: 'username',
        label: l10n.username,
        icon: Icons.person,
        textInputAction: TextInputAction.next,
      ),
      const SizedBox(height: 16, width: 16),
      ReactiveLoginTextField(
        formControlName: 'password',
        label: l10n.password,
        icon: Icons.lock,
        isPassword: true,
        textInputAction: TextInputAction.done,
      ),
    ];

    return isWideScreen
        ? IntrinsicHeight(
            child: Row(
              children: fields
                  .map((field) => field is SizedBox
                      ? SizedBox(width: field.width)
                      : Expanded(child: field))
                  .toList(),
            ),
          )
        : Column(
            children: fields
                .map((field) =>
                    field is SizedBox ? SizedBox(height: field.height) : field)
                .toList(),
          );
  }
}

@RoutePage()
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key, required this.onLogin});

  final void Function() onLogin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginSettings = ref.read(loginSettingsProvider);
    final loginStateNotifier = ref.read(graphQLProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    final isWide = checkLayout(
      MediaQuery.of(context).size.width,
      LayoutType.desktop,
      check: CheckLayoutType.atLeast,
    );
    final form = useMemoized(() => fb.group({
          'url': [loginSettings?.urlBase ?? '', Validators.required],
          'username': [loginSettings?.username ?? ''],
          'password': [loginSettings?.password ?? ''],
        }));
    final showLoginFields = useState(
        loginSettings?.username != null && loginSettings?.password != null);

    void handleLogin() {
      if (!form.valid) return;

      final urlBase = form.control('url').value as String;
      if (showLoginFields.value) {
        final username = form.control('username').value as String;
        final password = form.control('password').value as String;
        loginStateNotifier.connect(HttpBasicAuth(
          urlBase: urlBase,
          username: username,
          password: password,
        ));
      } else {
        loginStateNotifier.connect(HttpBasicAuth(urlBase: urlBase));
      }

      onLogin();
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.login)),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: isWide
                      ? kMediumContentWidth
                      : constraints.maxWidth - kStandardPadding * 2,
                ),
                padding: const EdgeInsets.all(kStandardPadding),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: ReactiveForm(
                      formGroup: form,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ReactiveLoginTextField(
                            formControlName: 'url',
                            label: l10n.serverAddress,
                            icon: Icons.link,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 16),
                          SwitchListTile(
                            title: Text(l10n.useHttpAuth),
                            value: showLoginFields.value,
                            onChanged: (value) => showLoginFields.value = value,
                          ),
                          AnimatedSize(
                            duration: const Duration(milliseconds: 300),
                            alignment: Alignment.topCenter,
                            curve: Curves.easeInOut,
                            child: showLoginFields.value
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 16),
                                    child: AuthFieldsWidget(
                                      form: form,
                                      isWideScreen: isWide,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ),
                          const SizedBox(height: 24),
                          Center(
                            child: Focus(
                              // 添加 Focus 包装
                              child: SizedBox(
                                width: isWide ? 200 : double.infinity,
                                height: 48,
                                child: ReactiveFormConsumer(
                                  builder: (context, form, child) {
                                    return ElevatedButton(
                                      onPressed: handleLogin,
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        foregroundColor: Colors.white,
                                      ),
                                      child: Text(l10n.login),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
