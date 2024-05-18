import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/local_db/local_db.dart';
import 'views/splash_screen/splah_screen.dart';

void main() async {
  await LocalDB.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Digitalt',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}