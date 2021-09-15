import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:space_x/features/feature_rockets/data/data_sources/remote_data_source/rockets_remote_data_source.dart';
import 'package:space_x/features/feature_rockets/data/repositories/rockets_repository.dart';
import 'package:space_x/features/feature_rockets/domain/repositories/rockets_repository.dart';
import 'package:space_x/features/feature_rockets/domain/usecases/rockets_usecase.dart';
import 'package:space_x/features/feature_rockets/presentation/bloc/rockets_bloc.dart';

import 'core/network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  ///!!! Bloc
  //rockets
  sl.registerLazySingleton(
    () => RocketsBloc(
      useCase: sl(),
    ),
  );

  ///!!! Data Sources
  //rockets
  sl.registerLazySingleton<RocketRemoteDataSource>(
    () => RocketsRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  ///!!! Repositories
  //rockets
  sl.registerLazySingleton<RocketsRepository>(
    () => RocketsRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  ///!!! Use Cases
  //rockets
  sl.registerLazySingleton(
    () => GetRocketsUseCase(
      sl(),
    ),
  );

  ///!!! Core
  //rockets
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(),
  );

  sl.registerLazySingleton(() => http.Client());

  ///!!! External
  //rockets
  sl.registerLazySingleton(() => Connectivity());
}
