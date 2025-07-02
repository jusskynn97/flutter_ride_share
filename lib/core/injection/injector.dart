import 'package:ride_share/features/register/data/datasource/country_local_datasource.dart';
import 'package:ride_share/features/register/data/repository_impl/country_repository_impl.dart';
import 'package:ride_share/features/register/domain/repository/country_repository.dart';
import 'package:ride_share/features/register/domain/usecases/get_countries.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initDependencies() {
  sl.registerLazySingleton<CountryLocalDataSource>(() => CountryLocalDataSourceImpl());
  sl.registerLazySingleton<CountryRepository>(() => CountryRepositoryImpl(sl()));
  sl.registerLazySingleton(() => GetCountries(sl()));
}