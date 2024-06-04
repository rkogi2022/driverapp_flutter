import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _initApp(context); // Call the function to initialize the app

    return Scaffold(
      backgroundColor: Color(0xFF003D8E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo1.png',
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'UrbanSwap',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _initApp(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3)); // Delay for 3 seconds

    Navigator.pushReplacementNamed(context, '/onboarding1');
  }
}
