import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../data/repository/UserRepository.dart';
import '../../logic/cubit/UserCubit.dart';
import '../ApiClient.dart';

/// Assigning Global instance for Get it *
final GetIt getIt = GetIt.instance;

void initializeDependenciesInjection() {

  final dio = Dio();
  final apiClient = ApiClient(dio);
  final userRepository = UserRepository(apiClient);

  /** Register dependencies with GetIt **/
  getIt.registerSingleton<ApiClient>(apiClient);
  getIt.registerSingleton<UserRepository>(userRepository);
  getIt.registerFactory(() => UserCubit(getIt<UserRepository>()));
}
