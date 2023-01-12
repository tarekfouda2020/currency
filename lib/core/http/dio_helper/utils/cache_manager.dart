import 'package:tf_dio_cache/dio_http_cache.dart';


class CacheManager {
  DioCacheManager call() {
    return DioCacheManager(
      CacheConfig(
        defaultRequestMethod: "POST",
      ),
    );
  }
}
