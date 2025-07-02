import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_share/core/routes/route_paths.dart';
import 'package:ride_share/features/login/presentation/screen/login_screen.dart';
import 'package:ride_share/features/register/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:ride_share/features/register/presentation/screen/register_screen/register_screen.dart';
import 'package:ride_share/features/welcome/presentaion/screen/welcome.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.welcome,
  routes: [
    GoRoute(
      path: RoutePaths.welcome,
      builder: (context, state) => WelcomeScreen(),
    ),
    GoRoute(
      path: RoutePaths.register,
      builder: (context, state) => BlocProvider(
        create: (_) => RegisterBloc(),
        child: const RegisterScreen(),
      ),
    ),
    GoRoute(
      path: RoutePaths.login,
      // builder: (context, state) => BlocProvider(
      //   create: (_) => RegisterBloc(),
      //   child: const RegisterScreen(),
      // ),
      builder: (context, state) => LoginScreen(),
    ),
  ],
);
