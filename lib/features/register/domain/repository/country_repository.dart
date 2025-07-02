import 'package:ride_share/features/register/domain/entity/country.dart';

abstract class CountryRepository {
  Future<List<Country>> getCountries();
}