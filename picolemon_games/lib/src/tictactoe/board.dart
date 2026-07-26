import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';
part 'board.g.dart';

typedef Coord = ({int x, int y});

@freezed
abstract class TicTacToeBoard with _$TicTacToeBoard {
  const TicTacToeBoard._();

  const factory TicTacToeBoard({
    required int width,
    required int height,
    required int winLength,
    required int seatCount,
    required List<int> cells,
    required List<int> history,
  }) = _TicTacToeBoard;

  factory TicTacToeBoard.empty({
    required int width,
    required int height,
    required int winLength,
    required int seatCount,
  }) => TicTacToeBoard(
    width: width,
    height: height,
    winLength: winLength,
    seatCount: seatCount,
    cells: List.filled(width * height, 0),
    history: const [],
  );

  factory TicTacToeBoard.fromJson(Map<String, dynamic> json) =>
      _$TicTacToeBoardFromJson(json);

  TicTacToeBoard withCell(int index, int value) {
    final next = List.of(cells);
    next[index] = value;
    return copyWith(cells: next);
  }

  int indexOf(Coord c) => c.y * width + c.x;

  Coord coordOf(int index) => (x: index % width, y: index ~/ width);

  bool contains(Coord c) => c.x >= 0 && c.x < width && c.y >= 0 && c.y < height;

  int markAtCoord(Coord c) => cells[indexOf(c)];

  ({int seat, List<int> line})? findWinningLine() {
    const steps = [(x: 1, y: 0), (x: 0, y: 1), (x: 1, y: 1), (x: 1, y: -1)];

    for (var i = 0; i < cells.length; i++) {
      final mark = cells[i];
      if (mark == 0) continue;
      final start = coordOf(i);

      for (final step in steps) {
        final line = <int>[i];
        var next = (x: start.x + step.x, y: start.y + step.y);
        while (contains(next) &&
            markAtCoord(next) == mark &&
            line.length < winLength) {
          line.add(indexOf(next));
          next = (x: next.x + step.x, y: next.y + step.y);
        }
        if (line.length == winLength) return (seat: mark - 1, line: line);
      }
    }
    return null;
  }

  bool isFull() {
    return !cells.contains(0);
  }
}
