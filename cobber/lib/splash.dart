import 'package:flutter/material.dart';
import 'introduction_screen.dart';
// Make sure you have the correct import for your main.dart file

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => IntroScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(165, 241, 34, 1),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 80,
          child: Image(image: AssetImage('assets/cobber.jpg')),
        ),
      ),
    );
  }
}
