// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_log.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class TimeLogCollectionReference
    implements
        TimeLogQuery,
        FirestoreCollectionReference<TimeLog, TimeLogQuerySnapshot> {
  factory TimeLogCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$TimeLogCollectionReference;

  static TimeLog fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return TimeLog.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    TimeLog value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<TimeLog> get reference;

  @override
  TimeLogDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TimeLogDocumentReference> add(TimeLog value);
}

class _$TimeLogCollectionReference extends _$TimeLogQuery
    implements TimeLogCollectionReference {
  factory _$TimeLogCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$TimeLogCollectionReference._(
      firestore.collection('time_logs').withConverter(
            fromFirestore: TimeLogCollectionReference.fromFirestore,
            toFirestore: TimeLogCollectionReference.toFirestore,
          ),
    );
  }

  _$TimeLogCollectionReference._(
    CollectionReference<TimeLog> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<TimeLog> get reference =>
      super.reference as CollectionReference<TimeLog>;

  @override
  TimeLogDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TimeLogDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<TimeLogDocumentReference> add(TimeLog value) {
    return reference.add(value).then((ref) => TimeLogDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TimeLogCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TimeLogDocumentReference
    extends FirestoreDocumentReference<TimeLog, TimeLogDocumentSnapshot> {
  factory TimeLogDocumentReference(DocumentReference<TimeLog> reference) =
      _$TimeLogDocumentReference;

  DocumentReference<TimeLog> get reference;

  /// A reference to the [TimeLogCollectionReference] containing this document.
  TimeLogCollectionReference get parent {
    return _$TimeLogCollectionReference(reference.firestore);
  }

  @override
  Stream<TimeLogDocumentSnapshot> snapshots();

  @override
  Future<TimeLogDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    Timestamp startTime,
    FieldValue startTimeFieldValue,
    Timestamp endTime,
    FieldValue endTimeFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
    String? location,
    FieldValue locationFieldValue,
    String userId,
    FieldValue userIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    Timestamp startTime,
    FieldValue startTimeFieldValue,
    Timestamp endTime,
    FieldValue endTimeFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
    String? location,
    FieldValue locationFieldValue,
    String userId,
    FieldValue userIdFieldValue,
  });
}

class _$TimeLogDocumentReference
    extends FirestoreDocumentReference<TimeLog, TimeLogDocumentSnapshot>
    implements TimeLogDocumentReference {
  _$TimeLogDocumentReference(this.reference);

  @override
  final DocumentReference<TimeLog> reference;

  /// A reference to the [TimeLogCollectionReference] containing this document.
  TimeLogCollectionReference get parent {
    return _$TimeLogCollectionReference(reference.firestore);
  }

  @override
  Stream<TimeLogDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TimeLogDocumentSnapshot._);
  }

  @override
  Future<TimeLogDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TimeLogDocumentSnapshot._);
  }

  @override
  Future<TimeLogDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(TimeLogDocumentSnapshot._);
  }

  Future<void> update({
    Object? startTime = _sentinel,
    FieldValue? startTimeFieldValue,
    Object? endTime = _sentinel,
    FieldValue? endTimeFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
    Object? location = _sentinel,
    FieldValue? locationFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
  }) async {
    assert(
      startTime == _sentinel || startTimeFieldValue == null,
      "Cannot specify both startTime and startTimeFieldValue",
    );
    assert(
      endTime == _sentinel || endTimeFieldValue == null,
      "Cannot specify both endTime and endTimeFieldValue",
    );
    assert(
      projectId == _sentinel || projectIdFieldValue == null,
      "Cannot specify both projectId and projectIdFieldValue",
    );
    assert(
      location == _sentinel || locationFieldValue == null,
      "Cannot specify both location and locationFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (startTime != _sentinel) 'startTime': startTime as Timestamp,
      if (startTimeFieldValue != null) 'startTime': startTimeFieldValue,
      if (endTime != _sentinel) 'endTime': endTime as Timestamp,
      if (endTimeFieldValue != null) 'endTime': endTimeFieldValue,
      if (projectId != _sentinel) 'projectId': projectId as String,
      if (projectIdFieldValue != null) 'projectId': projectIdFieldValue,
      if (location != _sentinel) 'location': location as String?,
      if (locationFieldValue != null) 'location': locationFieldValue,
      if (userId != _sentinel) 'userId': userId as String,
      if (userIdFieldValue != null) 'userId': userIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? startTime = _sentinel,
    FieldValue? startTimeFieldValue,
    Object? endTime = _sentinel,
    FieldValue? endTimeFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
    Object? location = _sentinel,
    FieldValue? locationFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
  }) {
    assert(
      startTime == _sentinel || startTimeFieldValue == null,
      "Cannot specify both startTime and startTimeFieldValue",
    );
    assert(
      endTime == _sentinel || endTimeFieldValue == null,
      "Cannot specify both endTime and endTimeFieldValue",
    );
    assert(
      projectId == _sentinel || projectIdFieldValue == null,
      "Cannot specify both projectId and projectIdFieldValue",
    );
    assert(
      location == _sentinel || locationFieldValue == null,
      "Cannot specify both location and locationFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (startTime != _sentinel) 'startTime': startTime as Timestamp,
      if (startTimeFieldValue != null) 'startTime': startTimeFieldValue,
      if (endTime != _sentinel) 'endTime': endTime as Timestamp,
      if (endTimeFieldValue != null) 'endTime': endTimeFieldValue,
      if (projectId != _sentinel) 'projectId': projectId as String,
      if (projectIdFieldValue != null) 'projectId': projectIdFieldValue,
      if (location != _sentinel) 'location': location as String?,
      if (locationFieldValue != null) 'location': locationFieldValue,
      if (userId != _sentinel) 'userId': userId as String,
      if (userIdFieldValue != null) 'userId': userIdFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TimeLogDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TimeLogQuery
    implements QueryReference<TimeLog, TimeLogQuerySnapshot> {
  @override
  TimeLogQuery limit(int limit);

  @override
  TimeLogQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  TimeLogQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  TimeLogQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  TimeLogQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  TimeLogQuery whereStartTime({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  TimeLogQuery whereEndTime({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  TimeLogQuery whereProjectId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  TimeLogQuery whereLocation({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  TimeLogQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });

  TimeLogQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  });

  TimeLogQuery orderByStartTime({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  });

  TimeLogQuery orderByEndTime({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  });

  TimeLogQuery orderByProjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  });

  TimeLogQuery orderByLocation({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  });

  TimeLogQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  });
}

class _$TimeLogQuery extends QueryReference<TimeLog, TimeLogQuerySnapshot>
    implements TimeLogQuery {
  _$TimeLogQuery(
    this._collection, {
    required Query<TimeLog> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TimeLogQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(TimeLogQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TimeLogQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TimeLogQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TimeLogQuery limit(int limit) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TimeLogQuery limitToLast(int limit) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TimeLogQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery whereStartTime({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TimeLogFieldMap['startTime']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery whereEndTime({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TimeLogFieldMap['endTime']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery whereProjectId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TimeLogFieldMap['projectId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery whereLocation({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TimeLogFieldMap['location']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TimeLogFieldMap['userId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  TimeLogQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TimeLogQuery orderByStartTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TimeLogFieldMap['startTime']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TimeLogQuery orderByEndTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TimeLogFieldMap['endTime']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TimeLogQuery orderByProjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TimeLogFieldMap['projectId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TimeLogQuery orderByLocation({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$TimeLogFieldMap['location']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  TimeLogQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TimeLogDocumentSnapshot? startAtDocument,
    TimeLogDocumentSnapshot? endAtDocument,
    TimeLogDocumentSnapshot? endBeforeDocument,
    TimeLogDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$TimeLogFieldMap['userId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$TimeLogQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TimeLogQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TimeLogDocumentSnapshot extends FirestoreDocumentSnapshot<TimeLog> {
  TimeLogDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<TimeLog> snapshot;

  @override
  TimeLogDocumentReference get reference {
    return TimeLogDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final TimeLog? data;
}

class TimeLogQuerySnapshot
    extends FirestoreQuerySnapshot<TimeLog, TimeLogQueryDocumentSnapshot> {
  TimeLogQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory TimeLogQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<TimeLog> snapshot,
  ) {
    final docs = snapshot.docs.map(TimeLogQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        TimeLogDocumentSnapshot._,
      );
    }).toList();

    return TimeLogQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<TimeLogDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TimeLogDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TimeLogDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<TimeLog> snapshot;

  @override
  final List<TimeLogQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TimeLogDocumentSnapshot>> docChanges;
}

class TimeLogQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<TimeLog>
    implements TimeLogDocumentSnapshot {
  TimeLogQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<TimeLog> snapshot;

  @override
  final TimeLog data;

  @override
  TimeLogDocumentReference get reference {
    return TimeLogDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeLog _$TimeLogFromJson(Map<String, dynamic> json) => TimeLog(
      id: json['id'] as String?,
      timeLogType: $enumDecode(_$TimeLogTypeEnumMap, json['timeLogType']),
      location: json['location'] as String?,
      userId: json['userId'] as String,
      breakTimes: (json['breakTimes'] as List<dynamic>?)
          ?.map((e) => BreakTime.fromJson(e as Map<String, dynamic>))
          .toList(),
      startTime: const FirestoreTimestampConverter()
          .fromJson(json['startTime'] as Timestamp),
      endTime: const FirestoreTimestampConverter()
          .fromJson(json['endTime'] as Timestamp),
      projectId: json['projectId'] as String,
    );

const _$TimeLogFieldMap = <String, String>{
  'id': 'id',
  'startTime': 'startTime',
  'endTime': 'endTime',
  'projectId': 'projectId',
  'timeLogType': 'timeLogType',
  'location': 'location',
  'userId': 'userId',
  'breakTimes': 'breakTimes',
};

Map<String, dynamic> _$TimeLogToJson(TimeLog instance) => <String, dynamic>{
      'id': instance.id,
      'startTime':
          const FirestoreTimestampConverter().toJson(instance.startTime),
      'endTime': const FirestoreTimestampConverter().toJson(instance.endTime),
      'projectId': instance.projectId,
      'timeLogType': _$TimeLogTypeEnumMap[instance.timeLogType]!,
      'location': instance.location,
      'userId': instance.userId,
      'breakTimes': instance.breakTimes?.map((e) => e.toJson()).toList(),
    };

const _$TimeLogTypeEnumMap = {
  TimeLogType.MANUAL: 'MANUAL',
  TimeLogType.PUNCH_TIME: 'PUNCH_TIME',
};
