import 'package:flutter/material.dart';
import 'package:tic_tac_toe/core/constants/enums.dart';
import 'package:tic_tac_toe/core/models/game_state.dart';

class TicTacToeWidget extends StatelessWidget {
  final GameState gameState;
  final Function(int) onSquareClicked;
  const TicTacToeWidget({super.key, required this.gameState, required this.onSquareClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
        itemCount: gameState.fields.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return buildGridTile(index);
        },
      ),
    );
  }

  Widget buildGridTile(int index) {
    return GestureDetector(
        onTap: () {
          if (gameState.status == GameStatus.p1Turn ||
              gameState.status == GameStatus.p2Turn) {
            onSquareClicked(index);
          }
        },
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                getPlayerSymbol(gameState.fields[index]),
                style: const TextStyle(fontSize: 90, color: Colors.white),
              ),
            )));
  }

  String getPlayerSymbol(Player? player) {
    if (player == Player.p1) {
      return 'X';
    } else if (player == Player.p2) {
      return 'O';
    }
    return '';
  }
}
