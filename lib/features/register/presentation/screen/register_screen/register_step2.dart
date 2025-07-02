import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share/core/uitls/colors.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_event.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_layout.dart';
import 'package:ride_share/features/register/presentation/widgets/country_dropdown.dart';

class RegisterStep2 extends StatelessWidget {
  final Bloc bloc;

  const RegisterStep2({
    super.key,
    required this.bloc
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterLayout(
        title: 'Enter Your Contact Details',
        subTitle: 'Enter your phone number with valid country code so others can reach you',
        fields: [
          SizedBox(height: 50,),
          Column(
            spacing: 10,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    // DropdownMenu(
                    //   dropdownMenuEntries: List.empty(),
                    //   width: 90,
                    //   inputDecorationTheme: InputDecorationTheme(
                    //     enabledBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: greyBorderColor
                    //       ),
                    //       borderRadius: BorderRadius.circular(15)
                    //     )
                    //   ),
                    // ),
                    CountryDropdown(),
                    SizedBox(width: 10,),
                    Flexible(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: greyTextFieldColor,
                          hintText: 'Phone number',
                          hintStyle: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
        label: 'Send verification code',
        onNext: () => {bloc.add(RegisterNextStep())},
        onBack: () => {bloc.add(RegisterPreviousStep())},
      );
  }
  
}