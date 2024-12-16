import 'package:get_it/get_it.dart';
import 'package:halal_spot/src/core/theme/theme_cubit.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  await _initializeRepositories();
  await _initializeProviders();
  await _initializeServices();
  await _initializeCubits();
}

Future<void> _initializeRepositories() async {
  // Network repositories
  // getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
  // getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
  
  // Local storage repositories
  // getIt.registerLazySingleton<LocalStorageRepository>(() => LocalStorageRepositoryImpl());
  // getIt.registerLazySingleton<CacheRepository>(() => CacheRepositoryImpl());
}

Future<void> _initializeProviders() async {
  // API providers
  // getIt.registerLazySingleton<ApiProvider>(() => ApiProviderImpl());
  
  // Local storage providers
  // getIt.registerLazySingleton<SharedPreferencesProvider>(() => SharedPreferencesProviderImpl());
  // getIt.registerLazySingleton<SecureStorageProvider>(() => SecureStorageProviderImpl());
}

Future<void> _initializeServices() async {
  // Core services
  // getIt.registerLazySingleton<AuthService>(() => AuthServiceImpl(getIt(), getIt()));
  // getIt.registerLazySingleton<NavigationService>(() => NavigationServiceImpl());
  
  // Feature services
  // getIt.registerLazySingleton<AnalyticsService>(() => AnalyticsServiceImpl());
  // getIt.registerLazySingleton<LoggingService>(() => LoggingServiceImpl());
}

Future<void> _initializeCubits() async {
  // Auth cubits
  // getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
  
  // Feature cubits
  // getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
  // getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));
  
  // Global cubits
  getIt.registerFactory<ThemeCubit>(() => ThemeCubit());
  // getIt.registerFactory<LocaleCubit>(() => LocaleCubit(getIt()));
}
