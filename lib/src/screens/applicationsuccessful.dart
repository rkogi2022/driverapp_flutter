import 'package:flutter/material.dart';

class ApplicationSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row 1
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                '🎊',
                style: TextStyle(fontSize: 40),
              ),
            ),
            // Row 2
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                'Application Submitted !',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00D415), // Text color #00D415
                ),
              ),
            ),
            // Row 3
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'UrbanSwap will contact you in a few days.',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
