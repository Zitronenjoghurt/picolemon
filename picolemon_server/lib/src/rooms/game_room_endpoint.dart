import 'dart:math';

import 'package:serverpod/server.dart';

import '../generated/protocol.dart';

class GameRoomEndpoint extends Endpoint {
  Future<GameRoom> createRoom(Session session, String gameType) async {
    final room = GameRoom(
      code: _generateCode(),
      gameType: gameType,
      createdAt: DateTime.now().toUtc(),
    );
    return await GameRoom.db.insertRow(session, room);
  }

  Future<GameRoom?> findByCode(Session session, String code) async {
    if (code.length != 9) return null;
    return await GameRoom.db.findFirstRow(
      session,
      where: (t) => t.code.equals(code),
    );
  }

  Future<GamePlayer> joinRoom(Session session, String code) async {
    final room = await GameRoom.db.findFirstRow(
      session,
      where: (t) => t.code.equals(code),
    );
    if (room == null) {
      throw GameException(
        message: 'No room with code $code',
        code: GameErrorCode.roomNotFound,
      );
    }
    if (!room.isActive) {
      throw GameException(
        message: 'Room $code is closed',
        code: GameErrorCode.roomInactive,
      );
    }

    final players = await GamePlayer.db.find(
      session,
      where: (t) => t.roomId.equals(room.id),
    );
    if (players.length >= 2) {
      // ToDo: player count depends on game type
      throw GameException(
        message: 'Room $code is full',
        code: GameErrorCode.roomFull,
      );
    }

    final player = GamePlayer(
      roomId: room.id!,
      userId: null,
      seat: players.length,
      joinedAt: DateTime.now().toUtc(),
    );
    return await GamePlayer.db.insertRow(session, player);
  }

  String _generateCode() {
    const alphabet = '2346789BDFGHKMPRTX';
    final rng = Random();
    return String.fromCharCodes(
      Iterable.generate(
        9,
        (_) => alphabet.codeUnitAt(rng.nextInt(alphabet.length)),
      ),
    );
  }
}
