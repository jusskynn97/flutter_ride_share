import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/routes/route_paths.dart';
import 'package:ride_share/core/uitls/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (_) => NavigationBloc(),
    //   child: BlocConsumer<NavigationBloc, NavigationState>(
    //     listener: (context, state) {
    //       if (state is NavigateRegisterState) {
    //         context.push('/register');
    //       }
    //     },
    //     builder: (context, state) {
    //       final bloc = context.read<NavigationBloc>();
    //       return _initWelcomeScreen(bloc);
    //     },
    //   ),
    // );
    return _initWelcomeScreen(context);
  }

  Scaffold _initWelcomeScreen(BuildContext context) {
    return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          child: SvgPicture.asset(
            'assets/images/component.svg',
            height: 355
          ),
        ),
        SizedBox(height: 60,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'HITCH',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Safe and Affordable Carpooling',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 15,
                children: [
                  TextButton(
                    onPressed: () {
                      context.push(RoutePaths.login);
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
                      foregroundColor: WidgetStateProperty.all<Color>(black),
                      minimumSize: WidgetStateProperty.all<Size>(Size(170, 50))
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.push(RoutePaths.register);
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(primaryColor),
                      foregroundColor: WidgetStateProperty.all<Color>(black),
                      minimumSize: WidgetStateProperty.all<Size>(Size(170, 50))
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(blue),
                  foregroundColor: WidgetStateProperty.all<Color>(white),
                  minimumSize: WidgetStateProperty.all<Size>(Size(355, 50))
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    SvgPicture.asset('assets/images/google.svg'),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () => {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(black),
                  foregroundColor: WidgetStateProperty.all<Color>(white),
                  minimumSize: WidgetStateProperty.all<Size>(Size(355, 50))
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: [
                    SvgPicture.asset('assets/images/apple.svg'),
                    Text(
                      'Sign in with Apple',
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
          
              SizedBox(height: 10,),
          
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By continuing you agree to Hitch's\n",
                  style: TextStyle(
                    fontFamily: 'Jokker TRIAL',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: greyTextColor
                  ),
                  children: [
                    TextSpan(
                      text: 'Term of Use',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        color: highlighTextColor,
                      )
                    ),
                    TextSpan(
                      text: ' and'
                    ),
                    TextSpan(
                      text: ' Privacy policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        color: highlighTextColor,
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ],
    ),
  );
  }
}
