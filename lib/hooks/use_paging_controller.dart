import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

typedef PageRequestCallback<T> = Future<void> Function(
  PagingController<int, T> controller,
  int pageKey,
);

PagingController<int, T> usePagingController<T>(
  PageRequestCallback<T> onPageRequest, {
  int firstPageKey = 1,
  List<Object?>? keys,
}) {
  return use(_PagingControllerHook<T>(
    onPageRequest,
    firstPageKey,
    keys,
  ));
}

class _PagingControllerHook<T> extends Hook<PagingController<int, T>> {
  final PageRequestCallback<T> onPageRequest;
  final int firstPageKey;

  const _PagingControllerHook(
    this.onPageRequest,
    this.firstPageKey, [
    List<Object?>? keys,
  ]) : super(keys: keys);

  @override
  _PagingControllerHookState<T> createState() =>
      _PagingControllerHookState<T>();
}

class _PagingControllerHookState<T>
    extends HookState<PagingController<int, T>, _PagingControllerHook<T>> {
  late final PagingController<int, T> _controller;

  @override
  void initHook() {
    super.initHook();
    _controller = PagingController<int, T>(firstPageKey: hook.firstPageKey);
    _controller.addPageRequestListener((pageKey) {
      try {
        hook.onPageRequest(_controller, pageKey);
      } catch (e) {
        _controller.error = e;
      }
    });
  }

  @override
  PagingController<int, T> build(BuildContext context) => _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateHook(_PagingControllerHook<T> oldHook) {
    if (hook.firstPageKey != oldHook.firstPageKey ||
        hook.onPageRequest != oldHook.onPageRequest) {
      _controller.refresh();
    }
    super.didUpdateHook(oldHook);
  }

  @override
  String get debugLabel => 'usePagingController';
}
