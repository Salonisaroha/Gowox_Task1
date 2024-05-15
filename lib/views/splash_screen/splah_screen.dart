import 'package:flutter/material.dart';
//import 'package:tic_tac_toe/core/assets/assets.dart';
import 'package:tic_tac_toe/core/widgets/background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Center(
        child: Image.asset('assets/images/banner.png'),
      ),
    );
  }
}
