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
import 'package:serverpod/serverpod.dart' as _i1;
import '../rooms/game_error_code.dart' as _i2;

abstract class GameException
    implements
        _i1.SerializableException,
        _i1.SerializableModel,
        _i1.ProtocolSerialization {
  GameException._({
    required this.message,
    required this.code,
  });

  factory GameException({
    required String message,
    required _i2.GameErrorCode code,
  }) = _GameExceptionImpl;

  factory GameException.fromJson(Map<String, dynamic> jsonSerialization) {
    return GameException(
      message: jsonSerialization['message'] as String,
      code: _i2.GameErrorCode.fromJson((jsonSerialization['code'] as String)),
    );
  }

  String message;

  _i2.GameErrorCode code;

  /// Returns a shallow copy of this [GameException]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  GameException copyWith({
    String? message,
    _i2.GameErrorCode? code,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'GameException',
      'message': message,
      'code': code.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'GameException',
      'message': message,
      'code': code.toJson(),
    };
  }

  @override
  String toString() {
    return 'GameException(message: $message, code: $code)';
  }
}

class _GameExceptionImpl extends GameException {
  _GameExceptionImpl({
    required String message,
    required _i2.GameErrorCode code,
  }) : super._(
         message: message,
         code: code,
       );

  /// Returns a shallow copy of this [GameException]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  GameException copyWith({
    String? message,
    _i2.GameErrorCode? code,
  }) {
    return GameException(
      message: message ?? this.message,
      code: code ?? this.code,
    );
  }
}
