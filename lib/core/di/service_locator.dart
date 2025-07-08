import 'package:bussels/core/network/token_provider.dart';
import 'package:bussels/features/auth/login/data/datasources/login_remote_datasources.dart';
import 'package:bussels/features/auth/login/domain/respository/login_repository.dart';
import 'package:bussels/features/auth/login/domain/respository/login_repository_impl.dart';
import 'package:bussels/features/auth/login/domain/usecase/login_usecase.dart';
import 'package:bussels/features/auth/login/presentation/bloc/bloc.dart';
import 'package:bussels/features/auth/signup/data/datasources/signup_remote_datasources.dart';
import 'package:bussels/features/auth/signup/domain/repository/signup_repository.dart';
import 'package:bussels/features/auth/signup/domain/repository/signup_repository_impl.dart';
import 'package:bussels/features/auth/signup/domain/usecase/signup_usecase.dart';
import 'package:bussels/features/auth/signup/presentation/bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../network/api_client.dart';
import '../network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(Connectivity()));
  sl.registerLazySingleton<TokenProvider>(() => TokenProvider());
  sl.registerLazySingleton<ApiClient>(
    () => ApiClient(networkInfo: sl(), tokenProvider: sl()),
  );
  //DataSources
  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<SignUpRemoteDataSource>(
    () => SignUpRemoteDataSourceImpl(sl()),
  );
  //Repositories
  sl.registerLazySingleton<LoginRepository>(() => LoginRepositoryImpl(sl()));
  sl.registerLazySingleton<SignUpRepository>(() => SignUpRepositoryImpl(sl()));
  // UseCases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUseCase(sl()));
  // Blocs
  sl.registerFactory(() => LoginBloc(loginUseCase: sl()));
  sl.registerFactory(() => SignUpBloc(signUpUseCase: sl()));
}
