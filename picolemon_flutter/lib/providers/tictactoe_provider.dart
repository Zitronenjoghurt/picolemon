import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:picolemon_games/picolemon_games.dart';

class TicTacToeNotifier extends Notifier<TicTacToeBoard> {
  final _game = const TicTacToeGame();

  @override
  TicTacToeBoard build() => _game.initialState(2);

  void makeMove(int index) {
    final seat = _game.currentPlayer(state);
    if (seat == null) return;

    final move = TicTacToeMove(index: index);
    if (!_game.isLegal(state, seat, move)) return;

    state = _game.apply(state, seat, move);
  }

  void reset() => state = _game.initialState(2);
}

final ticTacToeProvider = NotifierProvider<TicTacToeNotifier, TicTacToeBoard>(
  TicTacToeNotifier.new,
);
