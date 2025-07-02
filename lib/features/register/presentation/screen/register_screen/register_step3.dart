import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:ride_share/core/uitls/colors.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_event.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_layout.dart';

class RegisterStep3 extends StatelessWidget {
  final Bloc bloc;

  const RegisterStep3({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterLayout(
      title: 'We send you an SMS',
      subTitle: 'Please enter the code we just sent to +234 7080095034',
      fields: [
        SizedBox(height: 50),
        Column(
          spacing: 20,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                spacing: 25,
                children: [
                  Center(
                    child: VerificationCode(
                      textStyle: TextStyle(fontSize: 20.0, color: black),
                      keyboardType: TextInputType.number,
                      underlineColor:
                          primaryColor, // If this is null it will use primaryColor: Colors.red from Theme
                      length: 4,
                      cursorColor: Colors.blue,
                      onCompleted: (String value) {
                        // setState(() {
                        //   _code = value;
                        // });
                      },
                      onEditing: (bool value) {
                        // setState(() {
                        //   _onEditing = value;
                        // });
                        // if (!_onEditing) FocusScope.of(context).unfocus();
                      },
                    ),
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Resend code",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                              color: highlighTextColor,
                          fontFamily: 'Jokker TRIAL',
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
      label: 'Verify code',
      onNext: () => {bloc.add(RegisterNextStep())},
      onBack: () => {bloc.add(RegisterPreviousStep())},
    );
  }
}
