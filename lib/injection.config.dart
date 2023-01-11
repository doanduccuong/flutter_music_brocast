// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'audio_player_handler/audio_player_bloc.dart' as _i5;
import 'core/platform/network/google_service/google_service_bloc.dart' as _i8;
import 'core/platform/network/network_info.dart' as _i3;
import 'core/platform/user_rest_client/user_rest_client.dart' as _i11;
import 'features/data/repositories/auth_repository_impl.dart' as _i7;
import 'features/data/repositories/user_repository_impl.dart' as _i10;
import 'features/domain/repositories/auth_repository.dart' as _i6;
import 'features/domain/repositories/user_repository.dart' as _i9;
import 'setting/app_cubit.dart' as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final retrofitInjectableModule = _$RetrofitInjectableModule();
  gh.singleton<_i3.ApiUtil>(_i3.ApiUtil());
  gh.singleton<_i4.AppCubit>(_i4.AppCubit());
  gh.singleton<_i5.AudioPlayerApplicationBloc>(
      _i5.AudioPlayerApplicationBloc());
  gh.factory<_i6.AuthRepository>(() => _i7.AuthRepositoryImplement());
  gh.singleton<_i8.GoogleServiceBloc>(_i8.GoogleServiceBloc());
  gh.factory<_i9.UserRepository>(() => _i10.UserRepositoryImpl());
  gh.factory<_i11.UserRestClient>(() => retrofitInjectableModule.getService());
  return get;
}

class _$RetrofitInjectableModule extends _i11.RetrofitInjectableModule {}
