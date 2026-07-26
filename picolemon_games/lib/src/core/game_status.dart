import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_status.freezed.dart';

@freezed
sealed class GameStatus with _$GameStatus {
  const factory GameStatus.ongoing() = Ongoing;

  const factory GameStatus.draw() = Draw;

  const factory GameStatus.winner(List<int> seats) = Winner;
}
