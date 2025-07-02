import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ride_share/features/register/data/model/country_model.dart';

abstract class CountryLocalDataSource {
  Future<List<CountryModel>> getCountries();
}

class CountryLocalDataSourceImpl implements CountryLocalDataSource {
  @override
  Future<List<CountryModel>> getCountries() async {
    final String jsonString = await rootBundle.loadString('assets/countries.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => CountryModel.fromJson(json)).toList();
  }
}
