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
import 'greetings/greeting.dart' as _i2;
import 'rooms/game_error_code.dart' as _i3;
import 'rooms/game_exception.dart' as _i4;
import 'rooms/game_player.dart' as _i5;
import 'rooms/game_room.dart' as _i6;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _i7;
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _i8;
export 'greetings/greeting.dart';
export 'rooms/game_error_code.dart';
export 'rooms/game_exception.dart';
export 'rooms/game_player.dart';
export 'rooms/game_room.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.Greeting) {
      return _i2.Greeting.fromJson(data) as T;
    }
    if (t == _i3.GameErrorCode) {
      return _i3.GameErrorCode.fromJson(data) as T;
    }
    if (t == _i4.GameException) {
      return _i4.GameException.fromJson(data) as T;
    }
    if (t == _i5.GamePlayer) {
      return _i5.GamePlayer.fromJson(data) as T;
    }
    if (t == _i6.GameRoom) {
      return _i6.GameRoom.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Greeting?>()) {
      return (data != null ? _i2.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.GameErrorCode?>()) {
      return (data != null ? _i3.GameErrorCode.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.GameException?>()) {
      return (data != null ? _i4.GameException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.GamePlayer?>()) {
      return (data != null ? _i5.GamePlayer.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.GameRoom?>()) {
      return (data != null ? _i6.GameRoom.fromJson(data) : null) as T;
    }
    try {
      return _i7.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i8.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.Greeting => 'Greeting',
      _i3.GameErrorCode => 'GameErrorCode',
      _i4.GameException => 'GameException',
      _i5.GamePlayer => 'GamePlayer',
      _i6.GameRoom => 'GameRoom',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst('picolemon.', '');
    }

    switch (data) {
      case _i2.Greeting():
        return 'Greeting';
      case _i3.GameErrorCode():
        return 'GameErrorCode';
      case _i4.GameException():
        return 'GameException';
      case _i5.GamePlayer():
        return 'GamePlayer';
      case _i6.GameRoom():
        return 'GameRoom';
    }
    className = _i7.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_idp.$className';
    }
    className = _i8.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i2.Greeting>(data['data']);
    }
    if (dataClassName == 'GameErrorCode') {
      return deserialize<_i3.GameErrorCode>(data['data']);
    }
    if (dataClassName == 'GameException') {
      return deserialize<_i4.GameException>(data['data']);
    }
    if (dataClassName == 'GamePlayer') {
      return deserialize<_i5.GamePlayer>(data['data']);
    }
    if (dataClassName == 'GameRoom') {
      return deserialize<_i6.GameRoom>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _i7.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _i8.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i7.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _i8.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
