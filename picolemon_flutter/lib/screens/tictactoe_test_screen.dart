import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:picolemon_flutter/providers/tictactoe_provider.dart';
import 'package:picolemon_flutter/widgets/tictactoe_board_widget.dart';
import 'package:picolemon_games/picolemon_games.dart';

class TicTacToeTestScreen extends ConsumerWidget {
  const TicTacToeTestScreen({super.key});

  static const _game = TicTacToeGame();

  String _glyph(int seat) => seat == 0 ? 'X' : 'O';

  String _statusText(TicTacToeBoard board) {
    return switch (_game.status(board)) {
      Winner(:final seats) => '${_glyph(seats.first)} wins!',
      Draw() => "It's a draw",
      Ongoing() => "${_glyph(_game.currentPlayer(board)!)}'s turn",
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final board = ref.watch(ticTacToeProvider);
    final gameOver = _game.status(board) is! Ongoing;

    return Scaffold(
      appBar: AppBar(title: const Text('Tic-Tac-Toe')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _statusText(board),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                TicTacToeBoardWidget(
                  board: board,
                  onTap: (index) =>
                      ref.read(ticTacToeProvider.notifier).makeMove(index),
                  interactive: !gameOver,
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: () => ref.read(ticTacToeProvider.notifier).reset(),
                  child: const Text('New game'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
