// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request.dart';

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
abstract class LeaveRequestCollectionReference
    implements
        LeaveRequestQuery,
        FirestoreCollectionReference<LeaveRequest, LeaveRequestQuerySnapshot> {
  factory LeaveRequestCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$LeaveRequestCollectionReference;

  static LeaveRequest fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return LeaveRequest.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    LeaveRequest value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<LeaveRequest> get reference;

  @override
  LeaveRequestDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<LeaveRequestDocumentReference> add(LeaveRequest value);
}

class _$LeaveRequestCollectionReference extends _$LeaveRequestQuery
    implements LeaveRequestCollectionReference {
  factory _$LeaveRequestCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$LeaveRequestCollectionReference._(
      firestore.collection('leave_request').withConverter(
            fromFirestore: LeaveRequestCollectionReference.fromFirestore,
            toFirestore: LeaveRequestCollectionReference.toFirestore,
          ),
    );
  }

  _$LeaveRequestCollectionReference._(
    CollectionReference<LeaveRequest> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<LeaveRequest> get reference =>
      super.reference as CollectionReference<LeaveRequest>;

  @override
  LeaveRequestDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return LeaveRequestDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<LeaveRequestDocumentReference> add(LeaveRequest value) {
    return reference
        .add(value)
        .then((ref) => LeaveRequestDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$LeaveRequestCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class LeaveRequestDocumentReference extends FirestoreDocumentReference<
    LeaveRequest, LeaveRequestDocumentSnapshot> {
  factory LeaveRequestDocumentReference(
          DocumentReference<LeaveRequest> reference) =
      _$LeaveRequestDocumentReference;

  DocumentReference<LeaveRequest> get reference;

  /// A reference to the [LeaveRequestCollectionReference] containing this document.
  LeaveRequestCollectionReference get parent {
    return _$LeaveRequestCollectionReference(reference.firestore);
  }

  @override
  Stream<LeaveRequestDocumentSnapshot> snapshots();

  @override
  Future<LeaveRequestDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String subject,
    FieldValue subjectFieldValue,
    String? leaveDescription,
    FieldValue leaveDescriptionFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String userName,
    FieldValue userNameFieldValue,
    Timestamp startTime,
    FieldValue startTimeFieldValue,
    Timestamp endTime,
    FieldValue endTimeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String subject,
    FieldValue subjectFieldValue,
    String? leaveDescription,
    FieldValue leaveDescriptionFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String userName,
    FieldValue userNameFieldValue,
    Timestamp startTime,
    FieldValue startTimeFieldValue,
    Timestamp endTime,
    FieldValue endTimeFieldValue,
  });
}

class _$LeaveRequestDocumentReference extends FirestoreDocumentReference<
    LeaveRequest,
    LeaveRequestDocumentSnapshot> implements LeaveRequestDocumentReference {
  _$LeaveRequestDocumentReference(this.reference);

  @override
  final DocumentReference<LeaveRequest> reference;

  /// A reference to the [LeaveRequestCollectionReference] containing this document.
  LeaveRequestCollectionReference get parent {
    return _$LeaveRequestCollectionReference(reference.firestore);
  }

  @override
  Stream<LeaveRequestDocumentSnapshot> snapshots() {
    return reference.snapshots().map(LeaveRequestDocumentSnapshot._);
  }

  @override
  Future<LeaveRequestDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(LeaveRequestDocumentSnapshot._);
  }

  @override
  Future<LeaveRequestDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(LeaveRequestDocumentSnapshot._);
  }

  Future<void> update({
    Object? subject = _sentinel,
    FieldValue? subjectFieldValue,
    Object? leaveDescription = _sentinel,
    FieldValue? leaveDescriptionFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? userName = _sentinel,
    FieldValue? userNameFieldValue,
    Object? startTime = _sentinel,
    FieldValue? startTimeFieldValue,
    Object? endTime = _sentinel,
    FieldValue? endTimeFieldValue,
  }) async {
    assert(
      subject == _sentinel || subjectFieldValue == null,
      "Cannot specify both subject and subjectFieldValue",
    );
    assert(
      leaveDescription == _sentinel || leaveDescriptionFieldValue == null,
      "Cannot specify both leaveDescription and leaveDescriptionFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      userName == _sentinel || userNameFieldValue == null,
      "Cannot specify both userName and userNameFieldValue",
    );
    assert(
      startTime == _sentinel || startTimeFieldValue == null,
      "Cannot specify both startTime and startTimeFieldValue",
    );
    assert(
      endTime == _sentinel || endTimeFieldValue == null,
      "Cannot specify both endTime and endTimeFieldValue",
    );
    final json = {
      if (subject != _sentinel) 'subject': subject as String,
      if (subjectFieldValue != null) 'subject': subjectFieldValue,
      if (leaveDescription != _sentinel)
        'leaveDescription': leaveDescription as String?,
      if (leaveDescriptionFieldValue != null)
        'leaveDescription': leaveDescriptionFieldValue,
      if (userId != _sentinel) 'userId': userId as String,
      if (userIdFieldValue != null) 'userId': userIdFieldValue,
      if (userName != _sentinel) 'userName': userName as String,
      if (userNameFieldValue != null) 'userName': userNameFieldValue,
      if (startTime != _sentinel) 'startTime': startTime as Timestamp,
      if (startTimeFieldValue != null) 'startTime': startTimeFieldValue,
      if (endTime != _sentinel) 'endTime': endTime as Timestamp,
      if (endTimeFieldValue != null) 'endTime': endTimeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? subject = _sentinel,
    FieldValue? subjectFieldValue,
    Object? leaveDescription = _sentinel,
    FieldValue? leaveDescriptionFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? userName = _sentinel,
    FieldValue? userNameFieldValue,
    Object? startTime = _sentinel,
    FieldValue? startTimeFieldValue,
    Object? endTime = _sentinel,
    FieldValue? endTimeFieldValue,
  }) {
    assert(
      subject == _sentinel || subjectFieldValue == null,
      "Cannot specify both subject and subjectFieldValue",
    );
    assert(
      leaveDescription == _sentinel || leaveDescriptionFieldValue == null,
      "Cannot specify both leaveDescription and leaveDescriptionFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      userName == _sentinel || userNameFieldValue == null,
      "Cannot specify both userName and userNameFieldValue",
    );
    assert(
      startTime == _sentinel || startTimeFieldValue == null,
      "Cannot specify both startTime and startTimeFieldValue",
    );
    assert(
      endTime == _sentinel || endTimeFieldValue == null,
      "Cannot specify both endTime and endTimeFieldValue",
    );
    final json = {
      if (subject != _sentinel) 'subject': subject as String,
      if (subjectFieldValue != null) 'subject': subjectFieldValue,
      if (leaveDescription != _sentinel)
        'leaveDescription': leaveDescription as String?,
      if (leaveDescriptionFieldValue != null)
        'leaveDescription': leaveDescriptionFieldValue,
      if (userId != _sentinel) 'userId': userId as String,
      if (userIdFieldValue != null) 'userId': userIdFieldValue,
      if (userName != _sentinel) 'userName': userName as String,
      if (userNameFieldValue != null) 'userName': userNameFieldValue,
      if (startTime != _sentinel) 'startTime': startTime as Timestamp,
      if (startTimeFieldValue != null) 'startTime': startTimeFieldValue,
      if (endTime != _sentinel) 'endTime': endTime as Timestamp,
      if (endTimeFieldValue != null) 'endTime': endTimeFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is LeaveRequestDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class LeaveRequestQuery
    implements QueryReference<LeaveRequest, LeaveRequestQuerySnapshot> {
  @override
  LeaveRequestQuery limit(int limit);

  @override
  LeaveRequestQuery limitToLast(int limit);

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
  LeaveRequestQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
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
  LeaveRequestQuery whereFieldPath(
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

  LeaveRequestQuery whereDocumentId({
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
  LeaveRequestQuery whereSubject({
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
  LeaveRequestQuery whereLeaveDescription({
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
  LeaveRequestQuery whereUserId({
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
  LeaveRequestQuery whereUserName({
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
  LeaveRequestQuery whereStartTime({
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
  LeaveRequestQuery whereEndTime({
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

  LeaveRequestQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  });

  LeaveRequestQuery orderBySubject({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  });

  LeaveRequestQuery orderByLeaveDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  });

  LeaveRequestQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  });

  LeaveRequestQuery orderByUserName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  });

  LeaveRequestQuery orderByStartTime({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  });

  LeaveRequestQuery orderByEndTime({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  });
}

class _$LeaveRequestQuery
    extends QueryReference<LeaveRequest, LeaveRequestQuerySnapshot>
    implements LeaveRequestQuery {
  _$LeaveRequestQuery(
    this._collection, {
    required Query<LeaveRequest> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<LeaveRequestQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(LeaveRequestQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<LeaveRequestQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(LeaveRequestQuerySnapshot._fromQuerySnapshot);
  }

  @override
  LeaveRequestQuery limit(int limit) {
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  LeaveRequestQuery limitToLast(int limit) {
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  LeaveRequestQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
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
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  LeaveRequestQuery whereFieldPath(
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
    return _$LeaveRequestQuery(
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

  LeaveRequestQuery whereDocumentId({
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
    return _$LeaveRequestQuery(
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

  LeaveRequestQuery whereSubject({
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
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$LeaveRequestFieldMap['subject']!,
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

  LeaveRequestQuery whereLeaveDescription({
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
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$LeaveRequestFieldMap['leaveDescription']!,
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

  LeaveRequestQuery whereUserId({
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
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$LeaveRequestFieldMap['userId']!,
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

  LeaveRequestQuery whereUserName({
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
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$LeaveRequestFieldMap['userName']!,
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

  LeaveRequestQuery whereStartTime({
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
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$LeaveRequestFieldMap['startTime']!,
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

  LeaveRequestQuery whereEndTime({
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
    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$LeaveRequestFieldMap['endTime']!,
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

  LeaveRequestQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
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

    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  LeaveRequestQuery orderBySubject({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$LeaveRequestFieldMap['subject']!, descending: descending);
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

    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  LeaveRequestQuery orderByLeaveDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$LeaveRequestFieldMap['leaveDescription']!,
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

    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  LeaveRequestQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$LeaveRequestFieldMap['userId']!, descending: descending);
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

    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  LeaveRequestQuery orderByUserName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$LeaveRequestFieldMap['userName']!, descending: descending);
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

    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  LeaveRequestQuery orderByStartTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$LeaveRequestFieldMap['startTime']!, descending: descending);
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

    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  LeaveRequestQuery orderByEndTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    LeaveRequestDocumentSnapshot? startAtDocument,
    LeaveRequestDocumentSnapshot? endAtDocument,
    LeaveRequestDocumentSnapshot? endBeforeDocument,
    LeaveRequestDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$LeaveRequestFieldMap['endTime']!, descending: descending);
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

    return _$LeaveRequestQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$LeaveRequestQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class LeaveRequestDocumentSnapshot
    extends FirestoreDocumentSnapshot<LeaveRequest> {
  LeaveRequestDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<LeaveRequest> snapshot;

  @override
  LeaveRequestDocumentReference get reference {
    return LeaveRequestDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final LeaveRequest? data;
}

class LeaveRequestQuerySnapshot extends FirestoreQuerySnapshot<LeaveRequest,
    LeaveRequestQueryDocumentSnapshot> {
  LeaveRequestQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory LeaveRequestQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<LeaveRequest> snapshot,
  ) {
    final docs =
        snapshot.docs.map(LeaveRequestQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        LeaveRequestDocumentSnapshot._,
      );
    }).toList();

    return LeaveRequestQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<LeaveRequestDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    LeaveRequestDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<LeaveRequestDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<LeaveRequest> snapshot;

  @override
  final List<LeaveRequestQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<LeaveRequestDocumentSnapshot>> docChanges;
}

class LeaveRequestQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<LeaveRequest>
    implements LeaveRequestDocumentSnapshot {
  LeaveRequestQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<LeaveRequest> snapshot;

  @override
  final LeaveRequest data;

  @override
  LeaveRequestDocumentReference get reference {
    return LeaveRequestDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveRequest _$LeaveRequestFromJson(Map<String, dynamic> json) => LeaveRequest(
      id: json['id'] as String?,
      subject: json['subject'] as String,
      leaveDescription: json['leaveDescription'] as String?,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      leaveType: $enumDecode(_$LeaveTypeEnumMap, json['leaveType']),
      startTime: const FirestoreTimestampConverter()
          .fromJson(json['startTime'] as Timestamp),
      availability: $enumDecode(_$AvailabilityEnumMap, json['availability']),
      endTime: const FirestoreTimestampConverter()
          .fromJson(json['endTime'] as Timestamp),
    );

const _$LeaveRequestFieldMap = <String, String>{
  'id': 'id',
  'subject': 'subject',
  'leaveDescription': 'leaveDescription',
  'userId': 'userId',
  'userName': 'userName',
  'leaveType': 'leaveType',
  'startTime': 'startTime',
  'endTime': 'endTime',
  'availability': 'availability',
};

Map<String, dynamic> _$LeaveRequestToJson(LeaveRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'leaveDescription': instance.leaveDescription,
      'userId': instance.userId,
      'userName': instance.userName,
      'leaveType': _$LeaveTypeEnumMap[instance.leaveType]!,
      'startTime':
          const FirestoreTimestampConverter().toJson(instance.startTime),
      'endTime': const FirestoreTimestampConverter().toJson(instance.endTime),
      'availability': _$AvailabilityEnumMap[instance.availability]!,
    };

const _$LeaveTypeEnumMap = {
  LeaveType.FULL_DAY: 'FULL_DAY',
  LeaveType.HALF_DAY: 'HALF_DAY',
};

const _$AvailabilityEnumMap = {
  Availability.ON_CALL: 'ON_CALL',
  Availability.UNREACHABLE: 'UNREACHABLE',
};
