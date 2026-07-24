class TicTacToeBoard {
  final int width;
  final int height;
  final int seatCount;
  // Seat index + 1, 0 being empty
  final List<int> cells;

  TicTacToeBoard._({
    required this.width,
    required this.height,
    required this.seatCount,
    required List<int> cells,
  }) : cells = List.unmodifiable(cells);

  factory TicTacToeBoard.empty({
    required int width,
    required int height,
    required int seatCount,
  }) {
    return TicTacToeBoard._(
      width: width,
      height: height,
      seatCount: seatCount,
      cells: List.filled(width * height, 0)
    );
  }

  TicTacToeBoard copyWith({
    int? width,
    int? height,
    int? seatCount,
    List<int>? cells,
  }) {
    return TicTacToeBoard._(
      width: width ?? this.width,
      height: height ?? this.height,
      seatCount: seatCount ?? this.seatCount,
      cells: cells ?? this.cells,
    );
  }

  TicTacToeBoard withCell(int index, int value) {
    final next = List.of(cells);
    next[index] = value;
    return copyWith(cells: next);
  }
}