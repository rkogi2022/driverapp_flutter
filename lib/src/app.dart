import 'package:driver/src/screens/driversignup.dart';
import 'package:driver/src/screens/onboarding1.dart';
import 'package:driver/src/screens/onboarding2.dart';
import 'package:driver/src/screens/onboarding3.dart';
import 'package:driver/src/screens/splash.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

import 'screens/vehicle_registration_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding1': (context) => Onboarding1(),
        '/onboarding2': (context) => Onboarding2(),
        '/onboarding3': (context) => Onboarding3(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/vehicle_registration': (context) => VehicleRegistrationScreen(),
      },
    );
  }
}
