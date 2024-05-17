import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:tic_tac_toe/core/widgets/background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackgroundWidget(
       child:Stack(children :[
        Align(
          alignment: Alignment(-0.2, -0.4),
          child: Image.asset('assets/images/banner.png',
          
          ),
        ),
         Align(
          alignment: Alignment(0, 0.4),
          child: Text('Loading...',
           style: textTheme.headlineMedium,
          // TextStyle(color: Colors.black, fontFamily: 'assets/fonts/Digitalt.ttf', fontWeight: FontWeight.bold),),
        ),
         )      
       ] )
    );
  }
}