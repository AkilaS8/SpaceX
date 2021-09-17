import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:space_x/features/feature_dragon/data/data_sources/remote_data_source/dragons_remote_data_source.dart';
import 'package:space_x/features/feature_dragon/data/repositories/dragons_repository.dart';
import 'package:space_x/features/feature_dragon/domain/repositories/dragon_repository.dart';
import 'package:space_x/features/feature_dragon/domain/usecases/dragons_usecase.dart';
import 'package:space_x/features/feature_dragon/presentation/bloc/dragons_bloc.dart';
import 'package:space_x/features/feature_missions/data/data_source/remote_data_source/missions_remote_data_data_source.dart';
import 'package:space_x/features/feature_missions/data/repositories/missions_repository.dart';
import 'package:space_x/features/feature_missions/domain/repositories/missions_repository.dart';
import 'package:space_x/features/feature_missions/domain/usecases/missions_usecase.dart';
import 'package:space_x/features/feature_missions/presentation/bloc/missions_bloc.dart';
import 'package:space_x/features/feature_rockets/data/data_sources/remote_data_source/rockets_remote_data_source.dart';
import 'package:space_x/features/feature_rockets/data/repositories/rockets_repository.dart';
import 'package:space_x/features/feature_rockets/domain/repositories/rockets_repository.dart';
import 'package:space_x/features/feature_rockets/domain/usecases/rockets_usecase.dart';
import 'package:space_x/features/feature_rockets/presentation/bloc/rockets_bloc.dart';
import 'package:space_x/features/feature_ships/data/data_source/remote_data_source/ships_remote_data_data_source.dart';
import 'package:space_x/features/feature_ships/data/repositories/ships_repository.dart';
import 'package:space_x/features/feature_ships/domain/repositories/ships_repository.dart';
import 'package:space_x/features/feature_ships/domain/usecases/ships_usecase.dart';
import 'package:space_x/features/feature_ships/prersentation/bloc/ships_bloc.dart';

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
  //dragons
  sl.registerLazySingleton(
        () => DragonsBloc(
      useCase: sl(),
    ),
  );
  //ships
  sl.registerLazySingleton(
        () => ShipsBloc(
      useCase: sl(),
    ),
  );
  //missions
  sl.registerLazySingleton(
        () => MissionsBloc(
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
  //dragons
  sl.registerLazySingleton<DragonRemoteDataSource>(
        () => DragonsRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  //ships
  sl.registerLazySingleton<ShipsRemoteDataSource>(
        () => ShipsRemoteDataSourceImpl(
      client: sl(),
    ),
  );
  //missions
  sl.registerLazySingleton<MissionsRemoteDataSource>(
        () => MissionsRemoteDataSourceImpl(
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
  //rockets
  sl.registerLazySingleton<DragonsRepository>(
        () => DragonsRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  //ships
  sl.registerLazySingleton<ShipsRepository>(
        () => ShipsRepositoryImpl(
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );
  //missions
  sl.registerLazySingleton<MissionsRepository>(
        () => MissionsRepositoryImpl(
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
  //rockets
  sl.registerLazySingleton(
        () => GetDragonsUseCase(
      sl(),
    ),
  );
  //ships
  sl.registerLazySingleton(
        () => GetShipsUseCase(
      sl(),
    ),
  );
  //missions
  sl.registerLazySingleton(
        () => GetMissionsUseCase(
      sl(),
    ),
  );

  ///!!! Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(),
  );

  sl.registerLazySingleton(() => http.Client());


  ///!!! External
  sl.registerLazySingleton(() => Connectivity());
}
