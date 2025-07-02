
import 'package:ride_share/features/register/domain/entity/country.dart';
import 'package:ride_share/features/register/domain/repository/country_repository.dart';

class GetCountries {
  final CountryRepository repository;

  GetCountries(this.repository);

  Future<List<Country>> call() => repository.getCountries();
}
