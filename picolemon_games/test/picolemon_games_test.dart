import 'package:picolemon_games/picolemon_games.dart';
import 'package:test/test.dart';

TicTacToeBoard playMoves(
  TicTacToeGame game,
  TicTacToeBoard board,
  List<(int seat, int index)> moves,
) {
  for (final (seat, index) in moves) {
    board = game.apply(board, seat, TicTacToeMove(index: index));
  }
  return board;
}

void main() {
  final game = TicTacToeGame();

  group('initialState', () {
    test('produces an empty board carrying the config', () {
      final board = game.initialState(2);
      expect(board.width, 3);
      expect(board.height, 3);
      expect(board.winLength, 3);
      expect(board.seatCount, 2);
      expect(board.cells, List.filled(9, 0));
      expect(board.history, isEmpty);
      expect(game.currentPlayer(board), 0);
      expect(game.status(board), isA<Ongoing>());
    });
  });

  group('status / findWinningLine', () {
    test('detects a row win', () {
      final board = playMoves(game, game.initialState(2), [
        (0, 0), (1, 3), (0, 1), (1, 4), (0, 2), // seat 0 takes the top row
      ]);
      final status = game.status(board);
      expect(status, isA<Winner>());
      expect((status as Winner).seats, [0]);
      expect(board.findWinningLine()!.seat, 0);
      expect(board.findWinningLine()!.line, unorderedEquals([0, 1, 2]));
    });

    test('detects a column win', () {
      final board = playMoves(game, game.initialState(2), [
        (0, 0),
        (1, 1),
        (0, 3),
        (1, 2),
        (0, 6),
      ]);
      expect((game.status(board) as Winner).seats, [0]);
      expect(board.findWinningLine()!.line, unorderedEquals([0, 3, 6]));
    });

    test('detects a main-diagonal win', () {
      final board = playMoves(game, game.initialState(2), [
        (0, 0),
        (1, 1),
        (0, 4),
        (1, 2),
        (0, 8),
      ]);
      expect(board.findWinningLine()!.line, unorderedEquals([0, 4, 8]));
    });

    test(
      'detects an anti-diagonal win (guards the grid-vs-flat-index trap)',
      () {
        final board = playMoves(game, game.initialState(2), [
          (0, 2),
          (1, 0),
          (0, 4),
          (1, 1),
          (0, 6),
        ]);
        expect(board.findWinningLine()!.line, unorderedEquals([2, 4, 6]));
      },
    );

    test('a full board with no line is a draw', () {
      // X O X / X O O / O X X  — full, no three in a row.
      final board = playMoves(game, game.initialState(2), [
        (0, 0),
        (1, 1),
        (0, 2),
        (1, 4),
        (0, 3),
        (1, 5),
        (0, 7),
        (1, 6),
        (0, 8),
      ]);
      expect(board.isFull(), isTrue);
      expect(board.findWinningLine(), isNull);
      expect(game.status(board), isA<Draw>());
    });
  });

  group('isLegal', () {
    late TicTacToeBoard board;
    setUp(() => board = game.initialState(2));

    test('accepts an in-range move on the current turn', () {
      expect(game.isLegal(board, 0, TicTacToeMove(index: 4)), isTrue);
    });

    test('rejects a move by the wrong seat', () {
      expect(game.isLegal(board, 1, TicTacToeMove(index: 4)), isFalse);
    });

    test('rejects a move onto an occupied cell', () {
      final next = game.apply(board, 0, TicTacToeMove(index: 4));
      expect(game.isLegal(next, 1, TicTacToeMove(index: 4)), isFalse);
    });

    test('rejects an out-of-range index', () {
      expect(game.isLegal(board, 0, TicTacToeMove(index: 9)), isFalse);
    });

    test('rejects a negative index without throwing', () {
      expect(game.isLegal(board, 0, TicTacToeMove(index: -1)), isFalse);
    });

    test('rejects any move once the game is over', () {
      final won = playMoves(game, board, [
        (0, 0), (1, 3), (0, 1), (1, 4), (0, 2), // seat 0 wins
      ]);
      // Cell 8 is empty and it would be seat 1's turn, but the game is decided.
      expect(game.isLegal(won, 1, TicTacToeMove(index: 8)), isFalse);
    });
  });

  group('serialization round-trip', () {
    test('state survives encode -> decode', () {
      final board = playMoves(game, game.initialState(2), [
        (0, 0),
        (1, 4),
        (0, 1),
      ]);
      final decoded = game.decodeState(game.encodeState(board));
      expect(decoded.width, board.width);
      expect(decoded.height, board.height);
      expect(decoded.winLength, board.winLength);
      expect(decoded.seatCount, board.seatCount);
      expect(decoded.cells, board.cells);
      expect(decoded.history, board.history);
    });

    test('move survives encode -> decode', () {
      final move = TicTacToeMove(index: 7);
      final decoded = game.decodeMove(game.encodeMove(move));
      expect(decoded.index, move.index);
    });
  });

  group('non-standard boards', () {
    test('5x5 / win length 4: a horizontal four-in-a-row wins', () {
      final game = TicTacToeGame(width: 5, height: 5, winLength: 4);
      final board = playMoves(game, game.initialState(2), [
        (0, 5),
        (1, 20),
        (0, 6),
        (1, 21),
        (0, 7),
        (1, 22),
        (0, 8),
      ]);
      expect(board.width, 5);
      expect(board.winLength, 4);
      expect((game.status(board) as Winner).seats, [0]);
      expect(board.findWinningLine()!.line, unorderedEquals([5, 6, 7, 8]));
    });

    test('5x5 / win length 4: three-in-a-row is not enough', () {
      final game = TicTacToeGame(width: 5, height: 5, winLength: 4);
      final board = playMoves(game, game.initialState(2), [
        (0, 5),
        (1, 20),
        (0, 6),
        (1, 21),
        (0, 7),
      ]);
      expect(board.findWinningLine(), isNull);
      expect(game.status(board), isA<Ongoing>());
    });

    test('non-square 4x3: a column win indexes by width, not height', () {
      final game = TicTacToeGame(width: 4, height: 3, winLength: 3);
      final board = playMoves(game, game.initialState(2), [
        (0, 0),
        (1, 1),
        (0, 4),
        (1, 2),
        (0, 8),
      ]);
      expect(board.width, 4);
      expect(board.height, 3);
      expect((game.status(board) as Winner).seats, [0]);
      expect(board.findWinningLine()!.line, unorderedEquals([0, 4, 8]));
    });
  });
}
