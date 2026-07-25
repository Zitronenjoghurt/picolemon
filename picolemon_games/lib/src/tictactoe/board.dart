typedef Coord = ({int x, int y});

class TicTacToeBoard {
  final int width;
  final int height;
  final int winLength;
  final int seatCount;

  // Seat index + 1, 0 being empty
  final List<int> cells;
  final List<int> history;

  TicTacToeBoard._({
    required this.width,
    required this.height,
    required this.winLength,
    required this.seatCount,
    required List<int> cells,
    required List<int> history,
  }) : cells = List.unmodifiable(cells),
       history = List.unmodifiable(history);

  factory TicTacToeBoard.empty({
    required int width,
    required int height,
    required int winLength,
    required int seatCount,
  }) {
    return TicTacToeBoard._(
      width: width,
      height: height,
      winLength: winLength,
      seatCount: seatCount,
      cells: List.filled(width * height, 0),
      history: List.empty(),
    );
  }

  TicTacToeBoard copyWith({
    int? width,
    int? height,
    int? winLength,
    int? seatCount,
    List<int>? cells,
    List<int>? history,
  }) {
    return TicTacToeBoard._(
      width: width ?? this.width,
      height: height ?? this.height,
      winLength: winLength ?? this.winLength,
      seatCount: seatCount ?? this.seatCount,
      cells: cells ?? this.cells,
      history: history ?? this.history,
    );
  }

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

  factory TicTacToeBoard.fromJson(Map<String, dynamic> json) =>
      TicTacToeBoard._(
        width: json['width'] as int,
        height: json['height'] as int,
        seatCount: json['seatCount'] as int,
        winLength: json['winLength'] as int,
        cells: (json['cells'] as List).cast<int>(),
        history: (json['history'] as List).cast<int>(),
      );

  Map<String, dynamic> toJson() => {
    'width': width,
    'height': height,
    'seatCount': seatCount,
    'winLength': winLength,
    'cells': cells,
    'history': history,
  };
}
