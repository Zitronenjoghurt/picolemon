/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../rooms/game_room.dart' as _i2;
import 'package:picolemon_client/src/protocol/protocol.dart' as _i3;

abstract class GamePlayer implements _i1.SerializableModel {
  GamePlayer._({
    this.id,
    required this.roomId,
    this.room,
    this.userId,
    required this.seat,
    required this.joinedAt,
  });

  factory GamePlayer({
    int? id,
    required int roomId,
    _i2.GameRoom? room,
    _i1.UuidValue? userId,
    required int seat,
    required DateTime joinedAt,
  }) = _GamePlayerImpl;

  factory GamePlayer.fromJson(Map<String, dynamic> jsonSerialization) {
    return GamePlayer(
      id: jsonSerialization['id'] as int?,
      roomId: jsonSerialization['roomId'] as int,
      room: jsonSerialization['room'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.GameRoom>(jsonSerialization['room']),
      userId: jsonSerialization['userId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['userId']),
      seat: jsonSerialization['seat'] as int,
      joinedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['joinedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int roomId;

  _i2.GameRoom? room;

  _i1.UuidValue? userId;

  int seat;

  DateTime joinedAt;

  /// Returns a shallow copy of this [GamePlayer]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  GamePlayer copyWith({
    int? id,
    int? roomId,
    _i2.GameRoom? room,
    _i1.UuidValue? userId,
    int? seat,
    DateTime? joinedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'GamePlayer',
      if (id != null) 'id': id,
      'roomId': roomId,
      if (room != null) 'room': room?.toJson(),
      if (userId != null) 'userId': userId?.toJson(),
      'seat': seat,
      'joinedAt': joinedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GamePlayerImpl extends GamePlayer {
  _GamePlayerImpl({
    int? id,
    required int roomId,
    _i2.GameRoom? room,
    _i1.UuidValue? userId,
    required int seat,
    required DateTime joinedAt,
  }) : super._(
         id: id,
         roomId: roomId,
         room: room,
         userId: userId,
         seat: seat,
         joinedAt: joinedAt,
       );

  /// Returns a shallow copy of this [GamePlayer]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  GamePlayer copyWith({
    Object? id = _Undefined,
    int? roomId,
    Object? room = _Undefined,
    Object? userId = _Undefined,
    int? seat,
    DateTime? joinedAt,
  }) {
    return GamePlayer(
      id: id is int? ? id : this.id,
      roomId: roomId ?? this.roomId,
      room: room is _i2.GameRoom? ? room : this.room?.copyWith(),
      userId: userId is _i1.UuidValue? ? userId : this.userId,
      seat: seat ?? this.seat,
      joinedAt: joinedAt ?? this.joinedAt,
    );
  }
}
