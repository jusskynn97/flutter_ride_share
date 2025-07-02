import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ride_share/core/injection/injector.dart';
import 'package:ride_share/core/routes/app_routes.dart';
import 'package:ride_share/core/uitls/colors.dart';

void main() {
  initDependencies();
  runApp(const MyApp());

  // runApp(BlocProvider(
  //   create: (_) => NavigationBloc(),
  //   child: MyApp(),\
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Jokker TRIAL", scaffoldBackgroundColor: white),
      routerConfig: appRouter,
    );
  }
}
