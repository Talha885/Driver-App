import 'package:cobber/login_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  void _skipToHomeScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) => const LoginScreen(
                title: 'ttt',
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            children: const [
              OnboardingPage(imagePath: 'assets/first.jpg'),
              OnboardingPage(imagePath: 'assets/second.jpg'),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 22,
            child: ElevatedButton(
              onPressed: () => _skipToHomeScreen(context),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
              child: Text(
                'Skip',
                style: TextStyle(fontSize: 18, color: Colors.yellow),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;

  const OnboardingPage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}
