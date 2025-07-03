import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_share/core/injection/injector.dart';
import 'package:ride_share/features/register/domain/entity/country.dart';
import 'package:ride_share/features/register/domain/usecases/get_countries.dart';

class CountryDropdown extends StatelessWidget {
  final Function(Country)? onSelected;

  const CountryDropdown({super.key, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Country>>(
      future: sl<GetCountries>().call(), // 👈 Gọi ở đây, an toàn
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        final countries = snapshot.data ?? [];

        return DropdownMenu<Country>(
          width: 100,
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
          dropdownMenuEntries: countries.map((country) {
            return DropdownMenuEntry<Country>(
              value: country,
              label: country.dialCode,
              leadingIcon: CachedNetworkImage(
                imageUrl: country.flagUrl.replaceAll('.svg', '.png'), // nếu API có PNG
                width: 24,
                height: 16,
                placeholder: (_, __) => const SizedBox(width: 24, height: 16),
                errorWidget: (_, __, ___) => const Icon(Icons.flag),
                errorListener: (_) => {
                  print('error')
                },
              )
            );
          }).toList(),
          onSelected: (value) {
            if (value != null && onSelected != null) {
              onSelected!(value);
            }
          },
        );
      },
    );
  }
}
