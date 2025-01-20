import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:komiyomi/providers/cache.dart';
import 'package:komiyomi/providers/graphql.dart';

class BackendImage extends ConsumerWidget {
  final String? path;
  final BoxFit fit;
  final double? width;
  final double? height;
  final Duration? fadeDuration;
  final LoadingErrorWidgetBuilder? errorBuilder;
  final BaseCacheManager? cacheManager;

  const BackendImage({
    super.key,
    required this.path,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.fadeDuration,
    this.errorBuilder,
    this.cacheManager,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(graphQLProvider);

    if (path == null || loginState == null) {
      return const Icon(Icons.broken_image, size: 48);
    }

    return CachedNetworkImage(
        imageUrl: loginState.getFullUrl(path!),
        fit: fit,
        httpHeaders: loginState.headers,
        width: width,
        height: height,
        fadeInDuration: fadeDuration ?? const Duration(milliseconds: 300),
        errorWidget: errorBuilder,
        cacheManager: cacheManager ?? ref.read(imageCacheManagerProvider));
  }
}

class IconBackendImage extends ConsumerWidget {
  final String? path;
  final double size;
  final IconData errorIcon;

  const IconBackendImage({
    super.key,
    required this.path,
    required this.size,
    this.errorIcon = Icons.broken_image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (path == null) {
      return Icon(errorIcon, size: size);
    }

    return BackendImage(
      path: path,
      width: size,
      height: size,
      fit: BoxFit.contain,
      fadeDuration: const Duration(milliseconds: 0),
      errorBuilder: (_, __, ___) => Icon(errorIcon, size: size),
    );
  }
}
