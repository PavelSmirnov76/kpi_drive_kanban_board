// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:kpi_kanban_app/core/di/app_module.dart' as _i130;
import 'package:kpi_kanban_app/features/board/data/datasources/board_api_service.dart'
    as _i559;
import 'package:kpi_kanban_app/features/board/data/datasources/board_remote_datasource.dart'
    as _i235;
import 'package:kpi_kanban_app/features/board/data/repositories/board_repository_impl.dart'
    as _i544;
import 'package:kpi_kanban_app/features/board/domain/repositories/board_repository.dart'
    as _i602;
import 'package:kpi_kanban_app/features/board/presentation/cubit/board_cubit.dart'
    as _i851;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.lazySingleton<_i559.BoardApiService>(
      () => appModule.boardApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i235.BoardRemoteDatasource>(
      () => _i235.BoardRemoteDatasourceImpl(gh<_i559.BoardApiService>()),
    );
    gh.lazySingleton<_i602.BoardRepository>(
      () => _i544.BoardRepositoryImpl(gh<_i235.BoardRemoteDatasource>()),
    );
    gh.factory<_i851.BoardCubit>(
      () => _i851.BoardCubit(gh<_i602.BoardRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i130.AppModule {}
