import 'package:picolemon_games/src/core/game.dart';
import 'package:picolemon_games/src/core/game_status.dart';
import 'package:picolemon_games/src/tictactoe/board.dart';
import 'package:picolemon_games/src/tictactoe/move.dart';

class TicTacToeGame implements Game<TicTacToeBoard, TicTacToeMove> {
  final int width;
  final int height;
  final int winLength;

  const TicTacToeGame({this.width = 3, this.height = 3, this.winLength = 3});

  @override
  String get gameType => 'tictactoe3x3';
}