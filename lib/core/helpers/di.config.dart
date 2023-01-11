// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/base/data/data_sources/home_remote_data_source.dart'
    as _i14;
import '../../features/base/data/data_sources/impl_home_remote_data_source.dart'
    as _i15;
import '../../features/base/data/repositories/impl_base_repository.dart' as _i4;
import '../../features/base/domain/repositories/base_repository.dart' as _i3;
import '../http/dio_helper/actions/delete.dart' as _i5;
import '../http/dio_helper/actions/get.dart' as _i9;
import '../http/dio_helper/actions/patch.dart' as _i18;
import '../http/dio_helper/actions/post.dart' as _i19;
import '../http/dio_helper/actions/put.dart' as _i20;
import '../http/dio_helper/utils/dio_header.dart' as _i6;
import '../http/dio_helper/utils/dio_options.dart' as _i7;
import '../http/dio_helper/utils/handle_errors.dart' as _i11;
import '../http/dio_helper/utils/handle_json_response.dart' as _i12;
import '../http/dio_helper/utils/handle_request_body.dart' as _i13;
import '../http/generic_http/generic_http.dart' as _i8;
import '../network/network_info.dart' as _i17;
import 'global_context.dart' as _i10;
import 'loading_helper.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.BaseRepository>(() => _i4.ImplBaseRepository());
  gh.lazySingleton<_i5.Delete>(() => _i5.Delete());
  gh.lazySingleton<_i6.DioHeader>(() => _i6.DioHeader());
  gh.lazySingleton<_i7.DioOptions>(() => _i7.DioOptions());
  gh.lazySingleton<_i8.GenericHttpImpl<dynamic>>(
      () => _i8.GenericHttpImpl<dynamic>());
  gh.lazySingleton<_i9.Get>(() => _i9.Get());
  gh.lazySingleton<_i10.GlobalContext>(() => _i10.GlobalContext());
  gh.lazySingleton<_i11.HandleErrors>(() => _i11.HandleErrors());
  gh.lazySingleton<_i12.HandleJsonResponse<dynamic>>(
      () => _i12.HandleJsonResponse<dynamic>());
  gh.lazySingleton<_i13.HandleRequestBody>(() => _i13.HandleRequestBody());
  gh.factory<_i14.HomeRemoteDataSource>(() => _i15.ImplHomeRemoteDataSource());
  gh.lazySingleton<_i16.LoadingHelper>(() => _i16.LoadingHelper());
  gh.lazySingleton<_i17.NetworkInfoImpl>(() => _i17.NetworkInfoImpl());
  gh.lazySingleton<_i18.Patch>(() => _i18.Patch());
  gh.lazySingleton<_i19.Post>(() => _i19.Post());
  gh.lazySingleton<_i20.Put>(() => _i20.Put());
  return get;
}
