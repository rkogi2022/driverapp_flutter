import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the LoginScreen page

class Onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Top logo image
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Image.asset('assets/images/logo.png'),
          ),
          // Middle image
          Padding(
            padding: const EdgeInsets.only(
                top: 50.0, bottom: 10.0), // Move down by 20px
            child: Image.asset(
                'assets/images/onboarding3.png'), // Changed image to onboarding3.png
          ),
          // Get Ready to Hustle! text
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Get Ready to Hustle!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003D8E),
              ),
            ),
          ),
          // Rent out your car to trusted users for specified periods and maximise your earnings. Flexibility row
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Rent out your car to trusted users for specified periods',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // and maximise your earnings. Flexibility row
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'and maximise your earnings. Flexibility and',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Add extra income, all in one app! row
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'extra income, all in one app!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Submit button with "Get Started Now" text
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the LoginScreen page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
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
                  'Get Started Now', // Changed button text to "Get Started Now"
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
