import 'package:device_scan_animation/device_scan_animation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe/core/constants/enums.dart';
import 'package:tic_tac_toe/core/widgets/background.dart';
import 'package:tic_tac_toe/core/widgets/custom_button.dart';
import 'package:tic_tac_toe/core/widgets/custom_chip.dart';


class FindingDevicesScreen extends StatelessWidget {
  const FindingDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    return  BackgroundWidget(
        child: SafeArea(
      child: Column(
        children: [
         const CustomChip(title: 'SCANNING...'),
          Expanded(
            flex: 4,
            child: Center(
              child: DeviceScanWidget(
                gap: 35,
                layers: 6,
                nodeType: NodeType.even,
                newNodesDuration: const Duration(seconds:5),
                ringThickness: 3,
                nodeColor: Colors.lightGreenAccent,
                scanColor: Color(0xFFAB50F4),
              ),
          ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: CustomButton(
                title: 'Start Game!',
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
