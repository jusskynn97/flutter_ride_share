

import 'package:ride_share/features/register/domain/entity/country.dart';

class CountryModel extends Country {
  CountryModel({
    required String name,
    required String dialCode,
    required String flagUrl,
  }) : super(name: name, dialCode: dialCode, flagUrl: flagUrl);

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'],
      dialCode: json['dial_code'],
      flagUrl: json['code'],
    );
  }
}
