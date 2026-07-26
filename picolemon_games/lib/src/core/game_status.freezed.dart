// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatus()';
}


}

/// @nodoc
class $GameStatusCopyWith<$Res>  {
$GameStatusCopyWith(GameStatus _, $Res Function(GameStatus) __);
}


/// Adds pattern-matching-related methods to [GameStatus].
extension GameStatusPatterns on GameStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Ongoing value)?  ongoing,TResult Function( Draw value)?  draw,TResult Function( Winner value)?  winner,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing(_that);case Draw() when draw != null:
return draw(_that);case Winner() when winner != null:
return winner(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Ongoing value)  ongoing,required TResult Function( Draw value)  draw,required TResult Function( Winner value)  winner,}){
final _that = this;
switch (_that) {
case Ongoing():
return ongoing(_that);case Draw():
return draw(_that);case Winner():
return winner(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Ongoing value)?  ongoing,TResult? Function( Draw value)?  draw,TResult? Function( Winner value)?  winner,}){
final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing(_that);case Draw() when draw != null:
return draw(_that);case Winner() when winner != null:
return winner(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  ongoing,TResult Function()?  draw,TResult Function( List<int> seats)?  winner,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing();case Draw() when draw != null:
return draw();case Winner() when winner != null:
return winner(_that.seats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  ongoing,required TResult Function()  draw,required TResult Function( List<int> seats)  winner,}) {final _that = this;
switch (_that) {
case Ongoing():
return ongoing();case Draw():
return draw();case Winner():
return winner(_that.seats);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  ongoing,TResult? Function()?  draw,TResult? Function( List<int> seats)?  winner,}) {final _that = this;
switch (_that) {
case Ongoing() when ongoing != null:
return ongoing();case Draw() when draw != null:
return draw();case Winner() when winner != null:
return winner(_that.seats);case _:
  return null;

}
}

}

/// @nodoc


class Ongoing implements GameStatus {
  const Ongoing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ongoing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatus.ongoing()';
}


}




/// @nodoc


class Draw implements GameStatus {
  const Draw();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Draw);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatus.draw()';
}


}




/// @nodoc


class Winner implements GameStatus {
  const Winner(final  List<int> seats): _seats = seats;
  

 final  List<int> _seats;
 List<int> get seats {
  if (_seats is EqualUnmodifiableListView) return _seats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seats);
}


/// Create a copy of GameStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WinnerCopyWith<Winner> get copyWith => _$WinnerCopyWithImpl<Winner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Winner&&const DeepCollectionEquality().equals(other._seats, _seats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_seats));

@override
String toString() {
  return 'GameStatus.winner(seats: $seats)';
}


}

/// @nodoc
abstract mixin class $WinnerCopyWith<$Res> implements $GameStatusCopyWith<$Res> {
  factory $WinnerCopyWith(Winner value, $Res Function(Winner) _then) = _$WinnerCopyWithImpl;
@useResult
$Res call({
 List<int> seats
});




}
/// @nodoc
class _$WinnerCopyWithImpl<$Res>
    implements $WinnerCopyWith<$Res> {
  _$WinnerCopyWithImpl(this._self, this._then);

  final Winner _self;
  final $Res Function(Winner) _then;

/// Create a copy of GameStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? seats = null,}) {
  return _then(Winner(
null == seats ? _self._seats : seats // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
