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
  String get gameType => 'tictactoe';

  @override
  TicTacToeBoard initialState(int playerCount) {
    return TicTacToeBoard.empty(
      width: width,
      height: height,
      winLength: winLength,
      seatCount: playerCount,
    );
  }

  @override
  bool isLegal(TicTacToeBoard state, int seat, TicTacToeMove move) {
    if (seat != currentPlayer(state)) return false;
    if (move.index < 0 || move.index >= state.cells.length) return false;
    if (state.cells[move.index] != 0) return false;
    if (status(state) is! Ongoing) return false;
    return true;
  }

  @override
  TicTacToeBoard apply(TicTacToeBoard state, int seat, TicTacToeMove move) {
    assert(isLegal(state, seat, move), 'apply called with an illegal move');
    final cells = List.of(state.cells)..[move.index] = seat + 1;
    return state.copyWith(
      cells: cells,
      history: [...state.history, move.index],
    );
  }

  @override
  GameStatus status(TicTacToeBoard state) {
    final win = state.findWinningLine();
    if (win != null) return Winner([win.seat]);
    if (state.isFull()) return const Draw();
    return const Ongoing();
  }

  @override
  int? currentPlayer(TicTacToeBoard state) {
    return state.history.length % state.seatCount;
  }

  @override
  Map<String, dynamic> encodeState(TicTacToeBoard state) {
    return state.toJson();
  }

  @override
  TicTacToeBoard decodeState(Map<String, dynamic> json) {
    return TicTacToeBoard.fromJson(json);
  }

  @override
  Map<String, dynamic> encodeMove(TicTacToeMove move) {
    return move.toJson();
  }

  @override
  TicTacToeMove decodeMove(Map<String, dynamic> json) {
    return TicTacToeMove.fromJson(json);
  }
}
