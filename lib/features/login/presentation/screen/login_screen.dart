import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/routes/route_paths.dart';
import 'package:ride_share/core/uitls/colors.dart';
import 'package:ride_share/shared/widget/password_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // surfaceTintColor: Colors.transparent,
        forceMaterialTransparency: true,
        leading: GestureDetector(
          onTap: () {
            context.push(RoutePaths.welcome);
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/images/left.svg',
              height: 20,
              width: 20,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Access to your accounts',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 50,),
                  Column(
                    spacing: 10,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w500,
                          ),
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
                      PasswordField(hintText: 'Password'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: highlighTextColor,
                                color: highlighTextColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: TextButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                        primaryColor,
                      ),
                      foregroundColor: WidgetStateProperty.all<Color>(black),
                      minimumSize: WidgetStateProperty.all<Size>(Size(355, 50)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
