import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_share/core/uitls/colors.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_event.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_layout.dart';
import 'package:ride_share/features/register/presentation/widgets/gender_radio_button.dart';

class RegisterStep4 extends StatelessWidget {
  final Bloc bloc;

  const RegisterStep4({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterLayout(
      title: 'Select your gender',
      subTitle: 'Please select your gender',
      fields: [
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            GenderRadioButton()
          ],
        ),
      ],
      label: 'Select' ,
      onNext: () => {bloc.add(RegisterNextStep())},
      onBack: () => {bloc.add(RegisterPreviousStep())},
    );
  }
}
