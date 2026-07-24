sealed class GameStatus {
  const GameStatus();
}

final class Ongoing extends GameStatus {
  const Ongoing();
}

final class Draw extends GameStatus {
  const Draw();
}

final class Winner extends GameStatus {
  final List<int> seats;
  const Winner(this.seats);
}