// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

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
abstract class CompanyCollectionReference
    implements
        CompanyQuery,
        FirestoreCollectionReference<Company, CompanyQuerySnapshot> {
  factory CompanyCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$CompanyCollectionReference;

  static Company fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Company.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Company value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Company> get reference;

  @override
  CompanyDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CompanyDocumentReference> add(Company value);
}

class _$CompanyCollectionReference extends _$CompanyQuery
    implements CompanyCollectionReference {
  factory _$CompanyCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$CompanyCollectionReference._(
      firestore.collection('companies').withConverter(
            fromFirestore: CompanyCollectionReference.fromFirestore,
            toFirestore: CompanyCollectionReference.toFirestore,
          ),
    );
  }

  _$CompanyCollectionReference._(
    CollectionReference<Company> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Company> get reference =>
      super.reference as CollectionReference<Company>;

  @override
  CompanyDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CompanyDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CompanyDocumentReference> add(Company value) {
    return reference.add(value).then((ref) => CompanyDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CompanyCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CompanyDocumentReference
    extends FirestoreDocumentReference<Company, CompanyDocumentSnapshot> {
  factory CompanyDocumentReference(DocumentReference<Company> reference) =
      _$CompanyDocumentReference;

  DocumentReference<Company> get reference;

  /// A reference to the [CompanyCollectionReference] containing this document.
  CompanyCollectionReference get parent {
    return _$CompanyCollectionReference(reference.firestore);
  }

  @override
  Stream<CompanyDocumentSnapshot> snapshots();

  @override
  Future<CompanyDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String companyName,
    FieldValue companyNameFieldValue,
    String emailId,
    FieldValue emailIdFieldValue,
    String? address,
    FieldValue addressFieldValue,
    String password,
    FieldValue passwordFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String companyName,
    FieldValue companyNameFieldValue,
    String emailId,
    FieldValue emailIdFieldValue,
    String? address,
    FieldValue addressFieldValue,
    String password,
    FieldValue passwordFieldValue,
  });
}

class _$CompanyDocumentReference
    extends FirestoreDocumentReference<Company, CompanyDocumentSnapshot>
    implements CompanyDocumentReference {
  _$CompanyDocumentReference(this.reference);

  @override
  final DocumentReference<Company> reference;

  /// A reference to the [CompanyCollectionReference] containing this document.
  CompanyCollectionReference get parent {
    return _$CompanyCollectionReference(reference.firestore);
  }

  @override
  Stream<CompanyDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CompanyDocumentSnapshot._);
  }

  @override
  Future<CompanyDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CompanyDocumentSnapshot._);
  }

  @override
  Future<CompanyDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(CompanyDocumentSnapshot._);
  }

  Future<void> update({
    Object? companyName = _sentinel,
    FieldValue? companyNameFieldValue,
    Object? emailId = _sentinel,
    FieldValue? emailIdFieldValue,
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? password = _sentinel,
    FieldValue? passwordFieldValue,
  }) async {
    assert(
      companyName == _sentinel || companyNameFieldValue == null,
      "Cannot specify both companyName and companyNameFieldValue",
    );
    assert(
      emailId == _sentinel || emailIdFieldValue == null,
      "Cannot specify both emailId and emailIdFieldValue",
    );
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      password == _sentinel || passwordFieldValue == null,
      "Cannot specify both password and passwordFieldValue",
    );
    final json = {
      if (companyName != _sentinel)
        _$CompanyFieldMap['companyName']!: companyName as String,
      if (companyNameFieldValue != null)
        _$CompanyFieldMap['companyName']!: companyNameFieldValue,
      if (emailId != _sentinel)
        _$CompanyFieldMap['emailId']!: emailId as String,
      if (emailIdFieldValue != null)
        _$CompanyFieldMap['emailId']!: emailIdFieldValue,
      if (address != _sentinel)
        _$CompanyFieldMap['address']!: address as String?,
      if (addressFieldValue != null)
        _$CompanyFieldMap['address']!: addressFieldValue,
      if (password != _sentinel)
        _$CompanyFieldMap['password']!: password as String,
      if (passwordFieldValue != null)
        _$CompanyFieldMap['password']!: passwordFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? companyName = _sentinel,
    FieldValue? companyNameFieldValue,
    Object? emailId = _sentinel,
    FieldValue? emailIdFieldValue,
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? password = _sentinel,
    FieldValue? passwordFieldValue,
  }) {
    assert(
      companyName == _sentinel || companyNameFieldValue == null,
      "Cannot specify both companyName and companyNameFieldValue",
    );
    assert(
      emailId == _sentinel || emailIdFieldValue == null,
      "Cannot specify both emailId and emailIdFieldValue",
    );
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      password == _sentinel || passwordFieldValue == null,
      "Cannot specify both password and passwordFieldValue",
    );
    final json = {
      if (companyName != _sentinel)
        _$CompanyFieldMap['companyName']!: companyName as String,
      if (companyNameFieldValue != null)
        _$CompanyFieldMap['companyName']!: companyNameFieldValue,
      if (emailId != _sentinel)
        _$CompanyFieldMap['emailId']!: emailId as String,
      if (emailIdFieldValue != null)
        _$CompanyFieldMap['emailId']!: emailIdFieldValue,
      if (address != _sentinel)
        _$CompanyFieldMap['address']!: address as String?,
      if (addressFieldValue != null)
        _$CompanyFieldMap['address']!: addressFieldValue,
      if (password != _sentinel)
        _$CompanyFieldMap['password']!: password as String,
      if (passwordFieldValue != null)
        _$CompanyFieldMap['password']!: passwordFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CompanyDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CompanyQuery
    implements QueryReference<Company, CompanyQuerySnapshot> {
  @override
  CompanyQuery limit(int limit);

  @override
  CompanyQuery limitToLast(int limit);

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
  CompanyQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
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
  CompanyQuery whereFieldPath(
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

  CompanyQuery whereDocumentId({
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
  CompanyQuery whereCompanyName({
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
  CompanyQuery whereEmailId({
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
  CompanyQuery whereAddress({
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
  CompanyQuery wherePassword({
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

  CompanyQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  });

  CompanyQuery orderByCompanyName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  });

  CompanyQuery orderByEmailId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  });

  CompanyQuery orderByAddress({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  });

  CompanyQuery orderByPassword({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  });
}

class _$CompanyQuery extends QueryReference<Company, CompanyQuerySnapshot>
    implements CompanyQuery {
  _$CompanyQuery(
    this._collection, {
    required Query<Company> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CompanyQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(CompanyQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CompanyQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CompanyQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CompanyQuery limit(int limit) {
    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CompanyQuery limitToLast(int limit) {
    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  CompanyQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
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
    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CompanyQuery whereFieldPath(
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
    return _$CompanyQuery(
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

  CompanyQuery whereDocumentId({
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
    return _$CompanyQuery(
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

  CompanyQuery whereCompanyName({
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
    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CompanyFieldMap['companyName']!,
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

  CompanyQuery whereEmailId({
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
    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CompanyFieldMap['emailId']!,
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

  CompanyQuery whereAddress({
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
    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CompanyFieldMap['address']!,
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

  CompanyQuery wherePassword({
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
    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CompanyFieldMap['password']!,
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

  CompanyQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
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

    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CompanyQuery orderByCompanyName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$CompanyFieldMap['companyName']!, descending: descending);
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

    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CompanyQuery orderByEmailId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$CompanyFieldMap['emailId']!,
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

    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CompanyQuery orderByAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$CompanyFieldMap['address']!,
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

    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CompanyQuery orderByPassword({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CompanyDocumentSnapshot? startAtDocument,
    CompanyDocumentSnapshot? endAtDocument,
    CompanyDocumentSnapshot? endBeforeDocument,
    CompanyDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$CompanyFieldMap['password']!, descending: descending);
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

    return _$CompanyQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CompanyQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CompanyDocumentSnapshot extends FirestoreDocumentSnapshot<Company> {
  CompanyDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Company> snapshot;

  @override
  CompanyDocumentReference get reference {
    return CompanyDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Company? data;
}

class CompanyQuerySnapshot
    extends FirestoreQuerySnapshot<Company, CompanyQueryDocumentSnapshot> {
  CompanyQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CompanyQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Company> snapshot,
  ) {
    final docs = snapshot.docs.map(CompanyQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CompanyDocumentSnapshot._,
      );
    }).toList();

    return CompanyQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CompanyDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CompanyDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CompanyDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Company> snapshot;

  @override
  final List<CompanyQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CompanyDocumentSnapshot>> docChanges;
}

class CompanyQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Company>
    implements CompanyDocumentSnapshot {
  CompanyQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Company> snapshot;

  @override
  final Company data;

  @override
  CompanyDocumentReference get reference {
    return CompanyDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as String,
      companyName: json['companyName'] as String,
      emailId: json['emailId'] as String,
      address: json['address'] as String?,
      password: json['password'] as String,
    );

const _$CompanyFieldMap = <String, String>{
  'id': 'id',
  'companyName': 'companyName',
  'emailId': 'emailId',
  'address': 'address',
  'password': 'password',
};

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'companyName': instance.companyName,
      'emailId': instance.emailId,
      'address': instance.address,
      'password': instance.password,
    };
