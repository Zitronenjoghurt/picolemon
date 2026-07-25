class TicTacToeMove {
  final int index;

  TicTacToeMove({required this.index});

  factory TicTacToeMove.fromJson(Map<String, dynamic> json) =>
      TicTacToeMove(index: json['index'] as int);

  Map<String, dynamic> toJson() => {'index': index};
}
