import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/models/game_state.dart';
import 'package:tic_tac_toe/core/widgets/background.dart';
import 'package:tic_tac_toe/views/tic_tac_toe_screen/widgets/tic_tac_toe_widget.dart';

class TicTacToeScreen extends StatefulWidget {
  const TicTacToeScreen({super.key});

  @override
  State<TicTacToeScreen> createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  GameState gameState = GameState();

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Center(
        child: TicTacToeWidget(
          gameState: gameState,
          onSquareClicked: (index) {
            setState(() {
              gameState.claimField(index); // Call claimField on the gameState instance
            });
          },
        ),
      ),
    );
  }
}
