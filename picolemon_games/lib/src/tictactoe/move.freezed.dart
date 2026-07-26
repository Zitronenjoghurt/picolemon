// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'move.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicTacToeMove {

 int get index;
/// Create a copy of TicTacToeMove
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicTacToeMoveCopyWith<TicTacToeMove> get copyWith => _$TicTacToeMoveCopyWithImpl<TicTacToeMove>(this as TicTacToeMove, _$identity);

  /// Serializes this TicTacToeMove to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicTacToeMove&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'TicTacToeMove(index: $index)';
}


}

/// @nodoc
abstract mixin class $TicTacToeMoveCopyWith<$Res>  {
  factory $TicTacToeMoveCopyWith(TicTacToeMove value, $Res Function(TicTacToeMove) _then) = _$TicTacToeMoveCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$TicTacToeMoveCopyWithImpl<$Res>
    implements $TicTacToeMoveCopyWith<$Res> {
  _$TicTacToeMoveCopyWithImpl(this._self, this._then);

  final TicTacToeMove _self;
  final $Res Function(TicTacToeMove) _then;

/// Create a copy of TicTacToeMove
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TicTacToeMove].
extension TicTacToeMovePatterns on TicTacToeMove {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicTacToeMove value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicTacToeMove() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicTacToeMove value)  $default,){
final _that = this;
switch (_that) {
case _TicTacToeMove():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicTacToeMove value)?  $default,){
final _that = this;
switch (_that) {
case _TicTacToeMove() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicTacToeMove() when $default != null:
return $default(_that.index);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index)  $default,) {final _that = this;
switch (_that) {
case _TicTacToeMove():
return $default(_that.index);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index)?  $default,) {final _that = this;
switch (_that) {
case _TicTacToeMove() when $default != null:
return $default(_that.index);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicTacToeMove implements TicTacToeMove {
  const _TicTacToeMove({required this.index});
  factory _TicTacToeMove.fromJson(Map<String, dynamic> json) => _$TicTacToeMoveFromJson(json);

@override final  int index;

/// Create a copy of TicTacToeMove
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicTacToeMoveCopyWith<_TicTacToeMove> get copyWith => __$TicTacToeMoveCopyWithImpl<_TicTacToeMove>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicTacToeMoveToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicTacToeMove&&(identical(other.index, index) || other.index == index));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'TicTacToeMove(index: $index)';
}


}

/// @nodoc
abstract mixin class _$TicTacToeMoveCopyWith<$Res> implements $TicTacToeMoveCopyWith<$Res> {
  factory _$TicTacToeMoveCopyWith(_TicTacToeMove value, $Res Function(_TicTacToeMove) _then) = __$TicTacToeMoveCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class __$TicTacToeMoveCopyWithImpl<$Res>
    implements _$TicTacToeMoveCopyWith<$Res> {
  __$TicTacToeMoveCopyWithImpl(this._self, this._then);

  final _TicTacToeMove _self;
  final $Res Function(_TicTacToeMove) _then;

/// Create a copy of TicTacToeMove
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_TicTacToeMove(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
