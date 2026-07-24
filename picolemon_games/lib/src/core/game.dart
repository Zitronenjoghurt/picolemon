import 'package:picolemon_games/src/core/game_status.dart';

abstract interface class Game<S, M> {
  String get gameType;

  S initialState(int playerCount);
  bool isLegal(S state, int seat, M move);
  S apply(S state, int seat, M move);
  GameStatus status (S state);
  String? currentPlayer(S state);

  Map<String, dynamic> encodeState(S state);
  S decodeState(Map<String, dynamic> json);

  Map<String, dynamic> encodeMove(M move);
  M decodeMove(Map<String, dynamic> json);
}