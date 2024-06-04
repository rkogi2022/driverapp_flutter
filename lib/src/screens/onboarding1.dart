import 'package:flutter/material.dart';
import 'onboarding2.dart'; // Import the Onboarding2 page

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Top logo image
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset('assets/images/logo.png'),
          ),
          Spacer(), // Spacer to push the middle image down
          // Middle image occupying 50% of the page
          Expanded(
            child: Image.asset(
              'assets/images/onboarding1.png',
              fit: BoxFit.contain,
            ),
          ),
          // Gear Up, Go-Getter! text
          Text(
            'Buckle Up!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF003D8E),
            ),
          ),
          // It’s time to make bank! text
          Text(
            'It’s time to make bank!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF003D8E),
            ),
          ),
          // Maximize your rides and earnings with our app. text
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Maximize your rides and earnings with our app.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Navigate, connect, and cash out with ease. text
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Navigate, connect, and cash out with ease.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(), // Spacer to push the button to the bottom
          // Submit button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Onboarding2 page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF003D8E), // Button background color
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // No border radius
                  ),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white), // Button text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
