import 'package:flutter/material.dart';
import 'package:murtaza_final_project/Screens/onboarding_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomeScreen(),
      backgroundColor: Colors.blueAccent,
      title: new Text('Logo Here',style: TextStyle(fontSize: 30,color: Colors.white),),

    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingScreen(),
    );
  }
}