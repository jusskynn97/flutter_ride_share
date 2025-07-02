import 'package:ride_share/features/register/data/datasource/country_local_datasource.dart';
import 'package:ride_share/features/register/domain/entity/country.dart';
import 'package:ride_share/features/register/domain/repository/country_repository.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryLocalDataSource localDataSource;

  CountryRepositoryImpl(this.localDataSource);

  @override
  Future<List<Country>> getCountries() {
    return localDataSource.getCountries();
  }
}