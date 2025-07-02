import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/routes/route_paths.dart';
import 'package:ride_share/core/uitls/colors.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_event.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_layout.dart';
import 'package:ride_share/features/register/presentation/widgets/password_field.dart';

class RegisterStep1 extends StatelessWidget {
  final Bloc bloc;

  const RegisterStep1({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterLayout(
      title: 'Enter your name',
      subTitle: 'Enter your first name and last name',
      fields: [
        SizedBox(height: 50),
        Column(
          spacing: 10,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w500
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: greyTextFieldColor,
                  hintText: 'First name',
                  hintStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              // ),
              
              child: TextField(
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w500
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: greyTextFieldColor,
                  hintText: 'Last name',
                  hintStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
            PasswordField(hintText: 'Password'),
            PasswordField(hintText: 'Confirm password'),
            Row(
              spacing: 20,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: greyTextFieldColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '8 characters',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: black,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: greyTextFieldColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '1 Uppercase',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: black,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: greyTextFieldColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '1 Number',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      label: 'Next',
      onNext: () => {bloc.add(RegisterNextStep())},
      onBack: () => {context.push(RoutePaths.welcome)},
    );
  }
}
