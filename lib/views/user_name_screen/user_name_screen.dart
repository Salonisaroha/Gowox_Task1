import 'package:flutter/material.dart';

import 'package:tic_tac_toe/core/constants/enums.dart';
import 'package:tic_tac_toe/core/widgets/background.dart';
import 'package:tic_tac_toe/core/widgets/custom_button.dart';
import 'package:tic_tac_toe/core/widgets/custom_chip.dart';


class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return  BackgroundWidget(
        child: SafeArea(
      child: Column(
        children: [
          CustomChip(title: 'Enter Player Name'),
          const Expanded(
            flex: 2,
            child: Center(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('PLAYER NAME',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white)),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: CustomButton(
                title: 'Continue',
                onTap: () {
                  
                },
                buttonStyleType: ButtonStyleType.purple,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
