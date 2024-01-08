import 'package:flutter/material.dart';
import 'package:flutter_app/view/router.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      router.go('/login');
    });
  }
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
