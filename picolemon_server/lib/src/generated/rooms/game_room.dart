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

abstract class GameRoom
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = GameRoomTable();

  static const db = GameRoomRepository._();

  @override
  int? id;

  String code;

  String gameType;

  _i1.UuidValue? hostUserId;

  DateTime createdAt;

  bool isActive;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static GameRoomInclude include() {
    return GameRoomInclude._();
  }

  static GameRoomIncludeList includeList({
    _i1.WhereExpressionBuilder<GameRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GameRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GameRoomTable>? orderByList,
    GameRoomInclude? include,
  }) {
    return GameRoomIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GameRoom.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(GameRoom.t),
      include: include,
    );
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

class GameRoomUpdateTable extends _i1.UpdateTable<GameRoomTable> {
  GameRoomUpdateTable(super.table);

  _i1.ColumnValue<String, String> code(String value) => _i1.ColumnValue(
    table.code,
    value,
  );

  _i1.ColumnValue<String, String> gameType(String value) => _i1.ColumnValue(
    table.gameType,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> hostUserId(
    _i1.UuidValue? value,
  ) => _i1.ColumnValue(
    table.hostUserId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<bool, bool> isActive(bool value) => _i1.ColumnValue(
    table.isActive,
    value,
  );
}

class GameRoomTable extends _i1.Table<int?> {
  GameRoomTable({super.tableRelation}) : super(tableName: 'game_room') {
    updateTable = GameRoomUpdateTable(this);
    code = _i1.ColumnString(
      'code',
      this,
    );
    gameType = _i1.ColumnString(
      'gameType',
      this,
    );
    hostUserId = _i1.ColumnUuid(
      'hostUserId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    isActive = _i1.ColumnBool(
      'isActive',
      this,
      hasDefault: true,
    );
  }

  late final GameRoomUpdateTable updateTable;

  late final _i1.ColumnString code;

  late final _i1.ColumnString gameType;

  late final _i1.ColumnUuid hostUserId;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnBool isActive;

  @override
  List<_i1.Column> get columns => [
    id,
    code,
    gameType,
    hostUserId,
    createdAt,
    isActive,
  ];
}

class GameRoomInclude extends _i1.IncludeObject {
  GameRoomInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => GameRoom.t;
}

class GameRoomIncludeList extends _i1.IncludeList {
  GameRoomIncludeList._({
    _i1.WhereExpressionBuilder<GameRoomTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(GameRoom.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => GameRoom.t;
}

class GameRoomRepository {
  const GameRoomRepository._();

  /// Returns a list of [GameRoom]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<GameRoom>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GameRoomTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GameRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GameRoomTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<GameRoom>(
      where: where?.call(GameRoom.t),
      orderBy: orderBy?.call(GameRoom.t),
      orderByList: orderByList?.call(GameRoom.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [GameRoom] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<GameRoom?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GameRoomTable>? where,
    int? offset,
    _i1.OrderByBuilder<GameRoomTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GameRoomTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<GameRoom>(
      where: where?.call(GameRoom.t),
      orderBy: orderBy?.call(GameRoom.t),
      orderByList: orderByList?.call(GameRoom.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [GameRoom] by its [id] or null if no such row exists.
  Future<GameRoom?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<GameRoom>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [GameRoom]s in the list and returns the inserted rows.
  ///
  /// The returned [GameRoom]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<GameRoom>> insert(
    _i1.DatabaseSession session,
    List<GameRoom> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<GameRoom>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [GameRoom] and returns the inserted row.
  ///
  /// The returned [GameRoom] will have its `id` field set.
  Future<GameRoom> insertRow(
    _i1.DatabaseSession session,
    GameRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<GameRoom>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [GameRoom]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<GameRoom>> update(
    _i1.DatabaseSession session,
    List<GameRoom> rows, {
    _i1.ColumnSelections<GameRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<GameRoom>(
      rows,
      columns: columns?.call(GameRoom.t),
      transaction: transaction,
    );
  }

  /// Updates a single [GameRoom]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<GameRoom> updateRow(
    _i1.DatabaseSession session,
    GameRoom row, {
    _i1.ColumnSelections<GameRoomTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<GameRoom>(
      row,
      columns: columns?.call(GameRoom.t),
      transaction: transaction,
    );
  }

  /// Updates a single [GameRoom] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<GameRoom?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<GameRoomUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<GameRoom>(
      id,
      columnValues: columnValues(GameRoom.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [GameRoom]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<GameRoom>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<GameRoomUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<GameRoomTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GameRoomTable>? orderBy,
    _i1.OrderByListBuilder<GameRoomTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<GameRoom>(
      columnValues: columnValues(GameRoom.t.updateTable),
      where: where(GameRoom.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GameRoom.t),
      orderByList: orderByList?.call(GameRoom.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [GameRoom]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<GameRoom>> delete(
    _i1.DatabaseSession session,
    List<GameRoom> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<GameRoom>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [GameRoom].
  Future<GameRoom> deleteRow(
    _i1.DatabaseSession session,
    GameRoom row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<GameRoom>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<GameRoom>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GameRoomTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<GameRoom>(
      where: where(GameRoom.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<GameRoomTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<GameRoom>(
      where: where?.call(GameRoom.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [GameRoom] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<GameRoomTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<GameRoom>(
      where: where(GameRoom.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
