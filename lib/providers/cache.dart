import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cache.g.dart';

@riverpod
CacheManager imageCacheManager(Ref ref) {
  return CacheManager(Config(
    'komiyomi-image',
    maxNrOfCacheObjects: 500,
  ));
}

@riverpod
CacheManager mangaCacheManager(Ref ref) {
  return CacheManager(Config('komiyomi-manga'));
}
