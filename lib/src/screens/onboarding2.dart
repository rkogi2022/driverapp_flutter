import 'package:flutter/material.dart';
import 'onboarding3.dart'; // Import the Onboarding3 page

class Onboarding2 extends StatelessWidget {
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
            child: Image.asset('assets/images/onboarding2.png'),
          ),
          // Gear Up, Go-Getter! text
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Gear Up, Go-Getter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003D8E),
              ),
            ),
          ),
          // Find rides quickly, navigate efficiently. text
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Find rides quickly, navigate efficiently, ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // and get paid instantly. Ready, set, drive.. text
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'and get paid instantly. Ready, set, drive.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Submit button
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Onboarding3 page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding3()),
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
