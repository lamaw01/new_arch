import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          'This is splashscreen',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
