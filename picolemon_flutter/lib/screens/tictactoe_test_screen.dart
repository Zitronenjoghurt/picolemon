import 'package:flutter/material.dart';
import 'package:picolemon_flutter/widgets/tictactoe_board_widget.dart';
import 'package:picolemon_games/picolemon_games.dart';

class TicTacToeTestScreen extends StatefulWidget {
  const TicTacToeTestScreen({super.key});

  @override
  State<StatefulWidget> createState() => _TicTacToeTestScreenState();
}

class _TicTacToeTestScreenState extends State<TicTacToeTestScreen> {
  final _game = const TicTacToeGame();
  late TicTacToeBoard _board;

  @override
  void initState() {
    super.initState();
    _board = _game.initialState(2);
  }

  void _onTap(int index) {
    final seat = _game.currentPlayer(_board);
    if (seat == null) return;

    final move = TicTacToeMove(index: index);
    if (!_game.isLegal(_board, seat, move)) return;

    setState(() {
      _board = _game.apply(_board, seat, move);
    });
  }

  void _newGame() {
    setState(() {
      _board = _game.initialState(2);
    });
  }

  String _glyph(int seat) => seat == 0 ? 'X' : 'O';

  String _statusText() {
    return switch (_game.status(_board)) {
      Winner(:final seats) => '${_glyph(seats.first)} wins!',
      Draw() => "It's a draw",
      Ongoing() => "${_glyph(_game.currentPlayer(_board)!)}'s turn",
    };
  }

  @override
  Widget build(BuildContext context) {
    final gameOver = _game.status(_board) is! Ongoing;

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
                  _statusText(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                TicTacToeBoardWidget(
                  board: _board,
                  onTap: _onTap,
                  interactive: !gameOver,
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _newGame,
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
