// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicTacToeBoard {

 int get width; int get height; int get winLength; int get seatCount; List<int> get cells; List<int> get history;
/// Create a copy of TicTacToeBoard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicTacToeBoardCopyWith<TicTacToeBoard> get copyWith => _$TicTacToeBoardCopyWithImpl<TicTacToeBoard>(this as TicTacToeBoard, _$identity);

  /// Serializes this TicTacToeBoard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicTacToeBoard&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.winLength, winLength) || other.winLength == winLength)&&(identical(other.seatCount, seatCount) || other.seatCount == seatCount)&&const DeepCollectionEquality().equals(other.cells, cells)&&const DeepCollectionEquality().equals(other.history, history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,winLength,seatCount,const DeepCollectionEquality().hash(cells),const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'TicTacToeBoard(width: $width, height: $height, winLength: $winLength, seatCount: $seatCount, cells: $cells, history: $history)';
}


}

/// @nodoc
abstract mixin class $TicTacToeBoardCopyWith<$Res>  {
  factory $TicTacToeBoardCopyWith(TicTacToeBoard value, $Res Function(TicTacToeBoard) _then) = _$TicTacToeBoardCopyWithImpl;
@useResult
$Res call({
 int width, int height, int winLength, int seatCount, List<int> cells, List<int> history
});




}
/// @nodoc
class _$TicTacToeBoardCopyWithImpl<$Res>
    implements $TicTacToeBoardCopyWith<$Res> {
  _$TicTacToeBoardCopyWithImpl(this._self, this._then);

  final TicTacToeBoard _self;
  final $Res Function(TicTacToeBoard) _then;

/// Create a copy of TicTacToeBoard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = null,Object? height = null,Object? winLength = null,Object? seatCount = null,Object? cells = null,Object? history = null,}) {
  return _then(_self.copyWith(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,winLength: null == winLength ? _self.winLength : winLength // ignore: cast_nullable_to_non_nullable
as int,seatCount: null == seatCount ? _self.seatCount : seatCount // ignore: cast_nullable_to_non_nullable
as int,cells: null == cells ? _self.cells : cells // ignore: cast_nullable_to_non_nullable
as List<int>,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [TicTacToeBoard].
extension TicTacToeBoardPatterns on TicTacToeBoard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicTacToeBoard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicTacToeBoard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicTacToeBoard value)  $default,){
final _that = this;
switch (_that) {
case _TicTacToeBoard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicTacToeBoard value)?  $default,){
final _that = this;
switch (_that) {
case _TicTacToeBoard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int width,  int height,  int winLength,  int seatCount,  List<int> cells,  List<int> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicTacToeBoard() when $default != null:
return $default(_that.width,_that.height,_that.winLength,_that.seatCount,_that.cells,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int width,  int height,  int winLength,  int seatCount,  List<int> cells,  List<int> history)  $default,) {final _that = this;
switch (_that) {
case _TicTacToeBoard():
return $default(_that.width,_that.height,_that.winLength,_that.seatCount,_that.cells,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int width,  int height,  int winLength,  int seatCount,  List<int> cells,  List<int> history)?  $default,) {final _that = this;
switch (_that) {
case _TicTacToeBoard() when $default != null:
return $default(_that.width,_that.height,_that.winLength,_that.seatCount,_that.cells,_that.history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicTacToeBoard extends TicTacToeBoard {
  const _TicTacToeBoard({required this.width, required this.height, required this.winLength, required this.seatCount, required final  List<int> cells, required final  List<int> history}): _cells = cells,_history = history,super._();
  factory _TicTacToeBoard.fromJson(Map<String, dynamic> json) => _$TicTacToeBoardFromJson(json);

@override final  int width;
@override final  int height;
@override final  int winLength;
@override final  int seatCount;
 final  List<int> _cells;
@override List<int> get cells {
  if (_cells is EqualUnmodifiableListView) return _cells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cells);
}

 final  List<int> _history;
@override List<int> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of TicTacToeBoard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicTacToeBoardCopyWith<_TicTacToeBoard> get copyWith => __$TicTacToeBoardCopyWithImpl<_TicTacToeBoard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicTacToeBoardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicTacToeBoard&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.winLength, winLength) || other.winLength == winLength)&&(identical(other.seatCount, seatCount) || other.seatCount == seatCount)&&const DeepCollectionEquality().equals(other._cells, _cells)&&const DeepCollectionEquality().equals(other._history, _history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,winLength,seatCount,const DeepCollectionEquality().hash(_cells),const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'TicTacToeBoard(width: $width, height: $height, winLength: $winLength, seatCount: $seatCount, cells: $cells, history: $history)';
}


}

/// @nodoc
abstract mixin class _$TicTacToeBoardCopyWith<$Res> implements $TicTacToeBoardCopyWith<$Res> {
  factory _$TicTacToeBoardCopyWith(_TicTacToeBoard value, $Res Function(_TicTacToeBoard) _then) = __$TicTacToeBoardCopyWithImpl;
@override @useResult
$Res call({
 int width, int height, int winLength, int seatCount, List<int> cells, List<int> history
});




}
/// @nodoc
class __$TicTacToeBoardCopyWithImpl<$Res>
    implements _$TicTacToeBoardCopyWith<$Res> {
  __$TicTacToeBoardCopyWithImpl(this._self, this._then);

  final _TicTacToeBoard _self;
  final $Res Function(_TicTacToeBoard) _then;

/// Create a copy of TicTacToeBoard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = null,Object? height = null,Object? winLength = null,Object? seatCount = null,Object? cells = null,Object? history = null,}) {
  return _then(_TicTacToeBoard(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,winLength: null == winLength ? _self.winLength : winLength // ignore: cast_nullable_to_non_nullable
as int,seatCount: null == seatCount ? _self.seatCount : seatCount // ignore: cast_nullable_to_non_nullable
as int,cells: null == cells ? _self._cells : cells // ignore: cast_nullable_to_non_nullable
as List<int>,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
