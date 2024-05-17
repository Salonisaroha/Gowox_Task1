import 'package:flutter/material.dart';

import 'package:tic_tac_toe/core/constants/enums.dart';
import 'package:tic_tac_toe/core/widgets/background.dart';
import 'package:tic_tac_toe/core/widgets/custom_button.dart';
import 'package:tic_tac_toe/core/widgets/custom_chip.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return  BackgroundWidget(
        child: SafeArea(
      child: Column(
        children: [
         const CustomChip(title: 'Welcome Back'),
          Expanded(
            flex: 3,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right:32.0),
                child: Image.asset('assets/images/banner.png'),
              ),
          ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: CustomButton(
                title: 'Let\'s Play Game!',
                onTap:() {
                  
                },
                buttonStyleType: ButtonStyleType.green,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
