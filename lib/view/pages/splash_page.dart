import 'package:flutter/material.dart';

// void main() {
//   runApp(const SplashScreen());
// }

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Center(
            child: Image.asset(
              'assets/logo/spac_splash.png',
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
