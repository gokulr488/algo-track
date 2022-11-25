// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_group.dart';

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
abstract class ProjectGroupCollectionReference
    implements
        ProjectGroupQuery,
        FirestoreCollectionReference<ProjectGroup, ProjectGroupQuerySnapshot> {
  factory ProjectGroupCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ProjectGroupCollectionReference;

  static ProjectGroup fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return ProjectGroup.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    ProjectGroup value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<ProjectGroup> get reference;

  @override
  ProjectGroupDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ProjectGroupDocumentReference> add(ProjectGroup value);
}

class _$ProjectGroupCollectionReference extends _$ProjectGroupQuery
    implements ProjectGroupCollectionReference {
  factory _$ProjectGroupCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ProjectGroupCollectionReference._(
      firestore.collection('project_groups').withConverter(
            fromFirestore: ProjectGroupCollectionReference.fromFirestore,
            toFirestore: ProjectGroupCollectionReference.toFirestore,
          ),
    );
  }

  _$ProjectGroupCollectionReference._(
    CollectionReference<ProjectGroup> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<ProjectGroup> get reference =>
      super.reference as CollectionReference<ProjectGroup>;

  @override
  ProjectGroupDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ProjectGroupDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ProjectGroupDocumentReference> add(ProjectGroup value) {
    return reference
        .add(value)
        .then((ref) => ProjectGroupDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectGroupCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ProjectGroupDocumentReference extends FirestoreDocumentReference<
    ProjectGroup, ProjectGroupDocumentSnapshot> {
  factory ProjectGroupDocumentReference(
          DocumentReference<ProjectGroup> reference) =
      _$ProjectGroupDocumentReference;

  DocumentReference<ProjectGroup> get reference;

  /// A reference to the [ProjectGroupCollectionReference] containing this document.
  ProjectGroupCollectionReference get parent {
    return _$ProjectGroupCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectGroupDocumentSnapshot> snapshots();

  @override
  Future<ProjectGroupDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String projectGroupName,
    FieldValue projectGroupNameFieldValue,
    String companyId,
    FieldValue companyIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String projectGroupName,
    FieldValue projectGroupNameFieldValue,
    String companyId,
    FieldValue companyIdFieldValue,
  });
}

class _$ProjectGroupDocumentReference extends FirestoreDocumentReference<
    ProjectGroup,
    ProjectGroupDocumentSnapshot> implements ProjectGroupDocumentReference {
  _$ProjectGroupDocumentReference(this.reference);

  @override
  final DocumentReference<ProjectGroup> reference;

  /// A reference to the [ProjectGroupCollectionReference] containing this document.
  ProjectGroupCollectionReference get parent {
    return _$ProjectGroupCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectGroupDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ProjectGroupDocumentSnapshot._);
  }

  @override
  Future<ProjectGroupDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProjectGroupDocumentSnapshot._);
  }

  @override
  Future<ProjectGroupDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ProjectGroupDocumentSnapshot._);
  }

  Future<void> update({
    Object? projectGroupName = _sentinel,
    FieldValue? projectGroupNameFieldValue,
    Object? companyId = _sentinel,
    FieldValue? companyIdFieldValue,
  }) async {
    assert(
      projectGroupName == _sentinel || projectGroupNameFieldValue == null,
      "Cannot specify both projectGroupName and projectGroupNameFieldValue",
    );
    assert(
      companyId == _sentinel || companyIdFieldValue == null,
      "Cannot specify both companyId and companyIdFieldValue",
    );
    final json = {
      if (projectGroupName != _sentinel)
        _$ProjectGroupFieldMap['projectGroupName']!: projectGroupName as String,
      if (projectGroupNameFieldValue != null)
        _$ProjectGroupFieldMap['projectGroupName']!: projectGroupNameFieldValue,
      if (companyId != _sentinel)
        _$ProjectGroupFieldMap['companyId']!: companyId as String,
      if (companyIdFieldValue != null)
        _$ProjectGroupFieldMap['companyId']!: companyIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? projectGroupName = _sentinel,
    FieldValue? projectGroupNameFieldValue,
    Object? companyId = _sentinel,
    FieldValue? companyIdFieldValue,
  }) {
    assert(
      projectGroupName == _sentinel || projectGroupNameFieldValue == null,
      "Cannot specify both projectGroupName and projectGroupNameFieldValue",
    );
    assert(
      companyId == _sentinel || companyIdFieldValue == null,
      "Cannot specify both companyId and companyIdFieldValue",
    );
    final json = {
      if (projectGroupName != _sentinel)
        _$ProjectGroupFieldMap['projectGroupName']!: projectGroupName as String,
      if (projectGroupNameFieldValue != null)
        _$ProjectGroupFieldMap['projectGroupName']!: projectGroupNameFieldValue,
      if (companyId != _sentinel)
        _$ProjectGroupFieldMap['companyId']!: companyId as String,
      if (companyIdFieldValue != null)
        _$ProjectGroupFieldMap['companyId']!: companyIdFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectGroupDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ProjectGroupQuery
    implements QueryReference<ProjectGroup, ProjectGroupQuerySnapshot> {
  @override
  ProjectGroupQuery limit(int limit);

  @override
  ProjectGroupQuery limitToLast(int limit);

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
  ProjectGroupQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
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
  ProjectGroupQuery whereFieldPath(
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

  ProjectGroupQuery whereDocumentId({
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
  ProjectGroupQuery whereProjectGroupName({
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
  ProjectGroupQuery whereCompanyId({
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

  ProjectGroupQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
  });

  ProjectGroupQuery orderByProjectGroupName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
  });

  ProjectGroupQuery orderByCompanyId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
  });
}

class _$ProjectGroupQuery
    extends QueryReference<ProjectGroup, ProjectGroupQuerySnapshot>
    implements ProjectGroupQuery {
  _$ProjectGroupQuery(
    this._collection, {
    required Query<ProjectGroup> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ProjectGroupQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(ProjectGroupQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ProjectGroupQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ProjectGroupQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ProjectGroupQuery limit(int limit) {
    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectGroupQuery limitToLast(int limit) {
    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ProjectGroupQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
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
    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectGroupQuery whereFieldPath(
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
    return _$ProjectGroupQuery(
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

  ProjectGroupQuery whereDocumentId({
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
    return _$ProjectGroupQuery(
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

  ProjectGroupQuery whereProjectGroupName({
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
    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectGroupFieldMap['projectGroupName']!,
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

  ProjectGroupQuery whereCompanyId({
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
    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectGroupFieldMap['companyId']!,
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

  ProjectGroupQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
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

    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectGroupQuery orderByProjectGroupName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ProjectGroupFieldMap['projectGroupName']!,
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

    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectGroupQuery orderByCompanyId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectGroupDocumentSnapshot? startAtDocument,
    ProjectGroupDocumentSnapshot? endAtDocument,
    ProjectGroupDocumentSnapshot? endBeforeDocument,
    ProjectGroupDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectGroupFieldMap['companyId']!, descending: descending);
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

    return _$ProjectGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectGroupQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ProjectGroupDocumentSnapshot
    extends FirestoreDocumentSnapshot<ProjectGroup> {
  ProjectGroupDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<ProjectGroup> snapshot;

  @override
  ProjectGroupDocumentReference get reference {
    return ProjectGroupDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final ProjectGroup? data;
}

class ProjectGroupQuerySnapshot extends FirestoreQuerySnapshot<ProjectGroup,
    ProjectGroupQueryDocumentSnapshot> {
  ProjectGroupQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ProjectGroupQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<ProjectGroup> snapshot,
  ) {
    final docs =
        snapshot.docs.map(ProjectGroupQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ProjectGroupDocumentSnapshot._,
      );
    }).toList();

    return ProjectGroupQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ProjectGroupDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ProjectGroupDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ProjectGroupDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<ProjectGroup> snapshot;

  @override
  final List<ProjectGroupQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ProjectGroupDocumentSnapshot>> docChanges;
}

class ProjectGroupQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<ProjectGroup>
    implements ProjectGroupDocumentSnapshot {
  ProjectGroupQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<ProjectGroup> snapshot;

  @override
  final ProjectGroup data;

  @override
  ProjectGroupDocumentReference get reference {
    return ProjectGroupDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectGroup _$ProjectGroupFromJson(Map<String, dynamic> json) => ProjectGroup(
      id: json['id'] as String?,
      projectGroupName: json['projectGroupName'] as String,
      companyId: json['companyId'] as String,
    );

const _$ProjectGroupFieldMap = <String, String>{
  'id': 'id',
  'projectGroupName': 'projectGroupName',
  'companyId': 'companyId',
};

Map<String, dynamic> _$ProjectGroupToJson(ProjectGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectGroupName': instance.projectGroupName,
      'companyId': instance.companyId,
    };
