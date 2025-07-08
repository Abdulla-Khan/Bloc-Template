import 'package:bussels/core/network/token_provider.dart';
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
}
