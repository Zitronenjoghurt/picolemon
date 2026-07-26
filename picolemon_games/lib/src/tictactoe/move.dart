import 'package:freezed_annotation/freezed_annotation.dart';

part 'move.freezed.dart';
part 'move.g.dart';

@freezed
abstract class TicTacToeMove with _$TicTacToeMove {
  const factory TicTacToeMove({required int index}) = _TicTacToeMove;

  factory TicTacToeMove.fromJson(Map<String, dynamic> json) =>
      _$TicTacToeMoveFromJson(json);
}
