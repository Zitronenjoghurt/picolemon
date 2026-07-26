// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicTacToeBoard _$TicTacToeBoardFromJson(Map<String, dynamic> json) =>
    _TicTacToeBoard(
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      winLength: (json['winLength'] as num).toInt(),
      seatCount: (json['seatCount'] as num).toInt(),
      cells: (json['cells'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      history: (json['history'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$TicTacToeBoardToJson(_TicTacToeBoard instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'winLength': instance.winLength,
      'seatCount': instance.seatCount,
      'cells': instance.cells,
      'history': instance.history,
    };
