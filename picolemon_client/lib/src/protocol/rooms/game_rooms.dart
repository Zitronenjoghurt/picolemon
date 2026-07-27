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

abstract class GameRoom implements _i1.SerializableModel {
  GameRoom._({
    this.id,
    required this.code,
    required this.gameType,
    this.hostUserId,
    required this.createdAt,
    bool? isActive,
  }) : isActive = isActive ?? true;

  factory GameRoom({
    int? id,
    required String code,
    required String gameType,
    _i1.UuidValue? hostUserId,
    required DateTime createdAt,
    bool? isActive,
  }) = _GameRoomImpl;

  factory GameRoom.fromJson(Map<String, dynamic> jsonSerialization) {
    return GameRoom(
      id: jsonSerialization['id'] as int?,
      code: jsonSerialization['code'] as String,
      gameType: jsonSerialization['gameType'] as String,
      hostUserId: jsonSerialization['hostUserId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(
              jsonSerialization['hostUserId'],
            ),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      isActive: jsonSerialization['isActive'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['isActive']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String code;

  String gameType;

  _i1.UuidValue? hostUserId;

  DateTime createdAt;

  bool isActive;

  /// Returns a shallow copy of this [GameRoom]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  GameRoom copyWith({
    int? id,
    String? code,
    String? gameType,
    _i1.UuidValue? hostUserId,
    DateTime? createdAt,
    bool? isActive,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'GameRoom',
      if (id != null) 'id': id,
      'code': code,
      'gameType': gameType,
      if (hostUserId != null) 'hostUserId': hostUserId?.toJson(),
      'createdAt': createdAt.toJson(),
      'isActive': isActive,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _GameRoomImpl extends GameRoom {
  _GameRoomImpl({
    int? id,
    required String code,
    required String gameType,
    _i1.UuidValue? hostUserId,
    required DateTime createdAt,
    bool? isActive,
  }) : super._(
         id: id,
         code: code,
         gameType: gameType,
         hostUserId: hostUserId,
         createdAt: createdAt,
         isActive: isActive,
       );

  /// Returns a shallow copy of this [GameRoom]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  GameRoom copyWith({
    Object? id = _Undefined,
    String? code,
    String? gameType,
    Object? hostUserId = _Undefined,
    DateTime? createdAt,
    bool? isActive,
  }) {
    return GameRoom(
      id: id is int? ? id : this.id,
      code: code ?? this.code,
      gameType: gameType ?? this.gameType,
      hostUserId: hostUserId is _i1.UuidValue? ? hostUserId : this.hostUserId,
      createdAt: createdAt ?? this.createdAt,
      isActive: isActive ?? this.isActive,
    );
  }
}
