import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/assets/assets.dart';

import 'package:tic_tac_toe/core/local_db/local_db.dart';
import 'package:tic_tac_toe/core/widgets/background.dart';
import 'package:tic_tac_toe/views/home_screen/home_screen.dart';
import 'package:tic_tac_toe/views/user_name_screen/user_name_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      bool isNewUser = LocalDB.userName == null;
      if (isNewUser) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const UserNameScreen(),
        ));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackgroundWidget(
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(-0.2, -0.4),
            child: Image.asset(Assets.images.banner),
          ),
          Align(
            alignment: const Alignment(0, 0.4),
            child: Text(
              'Loading...',
              style: textTheme.headlineMedium
                  ?.copyWith(color: const Color(0xFFBC93FF)),
            ),
          ),
        ],
      ),
    );
  }
}