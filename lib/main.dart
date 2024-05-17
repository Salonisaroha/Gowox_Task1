import 'package:flutter/material.dart';
import 'package:tic_tac_toe/views/finding_devices_screen/finding_devices_screen.dart';
import 'package:tic_tac_toe/views/home_screen/home_screen.dart';
import 'package:tic_tac_toe/views/splash_screen/splah_screen.dart';
import 'package:tic_tac_toe/views/tic_tac_toe_screen/tic_tac_toe_screen.dart';
import 'package:tic_tac_toe/views/user_name_screen/user_name_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title:'Flutter demo',
     theme:ThemeData(
      fontFamily: 'Digitalt',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
     ),
     home:const TicTacToeScreen(),
    );
  }
}