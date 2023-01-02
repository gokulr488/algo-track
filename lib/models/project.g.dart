// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

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
abstract class ProjectCollectionReference
    implements
        ProjectQuery,
        FirestoreCollectionReference<Project, ProjectQuerySnapshot> {
  factory ProjectCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ProjectCollectionReference;

  static Project fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Project.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Project value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Project> get reference;

  @override
  ProjectDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ProjectDocumentReference> add(Project value);
}

class _$ProjectCollectionReference extends _$ProjectQuery
    implements ProjectCollectionReference {
  factory _$ProjectCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ProjectCollectionReference._(
      firestore.collection('projects').withConverter(
            fromFirestore: ProjectCollectionReference.fromFirestore,
            toFirestore: ProjectCollectionReference.toFirestore,
          ),
    );
  }

  _$ProjectCollectionReference._(
    CollectionReference<Project> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Project> get reference =>
      super.reference as CollectionReference<Project>;

  @override
  ProjectDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ProjectDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ProjectDocumentReference> add(Project value) {
    return reference.add(value).then((ref) => ProjectDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ProjectDocumentReference
    extends FirestoreDocumentReference<Project, ProjectDocumentSnapshot> {
  factory ProjectDocumentReference(DocumentReference<Project> reference) =
      _$ProjectDocumentReference;

  DocumentReference<Project> get reference;

  /// A reference to the [ProjectCollectionReference] containing this document.
  ProjectCollectionReference get parent {
    return _$ProjectCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectDocumentSnapshot> snapshots();

  @override
  Future<ProjectDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String projectName,
    FieldValue projectNameFieldValue,
    String projectGroupId,
    FieldValue projectGroupIdFieldValue,
    String leadUserId,
    FieldValue leadUserIdFieldValue,
    List<String>? adminUsers,
    FieldValue adminUsersFieldValue,
    String companyId,
    FieldValue companyIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String projectName,
    FieldValue projectNameFieldValue,
    String projectGroupId,
    FieldValue projectGroupIdFieldValue,
    String leadUserId,
    FieldValue leadUserIdFieldValue,
    List<String>? adminUsers,
    FieldValue adminUsersFieldValue,
    String companyId,
    FieldValue companyIdFieldValue,
  });
}

class _$ProjectDocumentReference
    extends FirestoreDocumentReference<Project, ProjectDocumentSnapshot>
    implements ProjectDocumentReference {
  _$ProjectDocumentReference(this.reference);

  @override
  final DocumentReference<Project> reference;

  /// A reference to the [ProjectCollectionReference] containing this document.
  ProjectCollectionReference get parent {
    return _$ProjectCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ProjectDocumentSnapshot._);
  }

  @override
  Future<ProjectDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProjectDocumentSnapshot._);
  }

  @override
  Future<ProjectDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ProjectDocumentSnapshot._);
  }

  Future<void> update({
    Object? projectName = _sentinel,
    FieldValue? projectNameFieldValue,
    Object? projectGroupId = _sentinel,
    FieldValue? projectGroupIdFieldValue,
    Object? leadUserId = _sentinel,
    FieldValue? leadUserIdFieldValue,
    Object? adminUsers = _sentinel,
    FieldValue? adminUsersFieldValue,
    Object? companyId = _sentinel,
    FieldValue? companyIdFieldValue,
  }) async {
    assert(
      projectName == _sentinel || projectNameFieldValue == null,
      "Cannot specify both projectName and projectNameFieldValue",
    );
    assert(
      projectGroupId == _sentinel || projectGroupIdFieldValue == null,
      "Cannot specify both projectGroupId and projectGroupIdFieldValue",
    );
    assert(
      leadUserId == _sentinel || leadUserIdFieldValue == null,
      "Cannot specify both leadUserId and leadUserIdFieldValue",
    );
    assert(
      adminUsers == _sentinel || adminUsersFieldValue == null,
      "Cannot specify both adminUsers and adminUsersFieldValue",
    );
    assert(
      companyId == _sentinel || companyIdFieldValue == null,
      "Cannot specify both companyId and companyIdFieldValue",
    );
    final json = {
      if (projectName != _sentinel)
        _$ProjectFieldMap['projectName']!: projectName as String,
      if (projectNameFieldValue != null)
        _$ProjectFieldMap['projectName']!: projectNameFieldValue,
      if (projectGroupId != _sentinel)
        _$ProjectFieldMap['projectGroupId']!: projectGroupId as String,
      if (projectGroupIdFieldValue != null)
        _$ProjectFieldMap['projectGroupId']!: projectGroupIdFieldValue,
      if (leadUserId != _sentinel)
        _$ProjectFieldMap['leadUserId']!: leadUserId as String,
      if (leadUserIdFieldValue != null)
        _$ProjectFieldMap['leadUserId']!: leadUserIdFieldValue,
      if (adminUsers != _sentinel)
        _$ProjectFieldMap['adminUsers']!: adminUsers as List<String>?,
      if (adminUsersFieldValue != null)
        _$ProjectFieldMap['adminUsers']!: adminUsersFieldValue,
      if (companyId != _sentinel)
        _$ProjectFieldMap['companyId']!: companyId as String,
      if (companyIdFieldValue != null)
        _$ProjectFieldMap['companyId']!: companyIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? projectName = _sentinel,
    FieldValue? projectNameFieldValue,
    Object? projectGroupId = _sentinel,
    FieldValue? projectGroupIdFieldValue,
    Object? leadUserId = _sentinel,
    FieldValue? leadUserIdFieldValue,
    Object? adminUsers = _sentinel,
    FieldValue? adminUsersFieldValue,
    Object? companyId = _sentinel,
    FieldValue? companyIdFieldValue,
  }) {
    assert(
      projectName == _sentinel || projectNameFieldValue == null,
      "Cannot specify both projectName and projectNameFieldValue",
    );
    assert(
      projectGroupId == _sentinel || projectGroupIdFieldValue == null,
      "Cannot specify both projectGroupId and projectGroupIdFieldValue",
    );
    assert(
      leadUserId == _sentinel || leadUserIdFieldValue == null,
      "Cannot specify both leadUserId and leadUserIdFieldValue",
    );
    assert(
      adminUsers == _sentinel || adminUsersFieldValue == null,
      "Cannot specify both adminUsers and adminUsersFieldValue",
    );
    assert(
      companyId == _sentinel || companyIdFieldValue == null,
      "Cannot specify both companyId and companyIdFieldValue",
    );
    final json = {
      if (projectName != _sentinel)
        _$ProjectFieldMap['projectName']!: projectName as String,
      if (projectNameFieldValue != null)
        _$ProjectFieldMap['projectName']!: projectNameFieldValue,
      if (projectGroupId != _sentinel)
        _$ProjectFieldMap['projectGroupId']!: projectGroupId as String,
      if (projectGroupIdFieldValue != null)
        _$ProjectFieldMap['projectGroupId']!: projectGroupIdFieldValue,
      if (leadUserId != _sentinel)
        _$ProjectFieldMap['leadUserId']!: leadUserId as String,
      if (leadUserIdFieldValue != null)
        _$ProjectFieldMap['leadUserId']!: leadUserIdFieldValue,
      if (adminUsers != _sentinel)
        _$ProjectFieldMap['adminUsers']!: adminUsers as List<String>?,
      if (adminUsersFieldValue != null)
        _$ProjectFieldMap['adminUsers']!: adminUsersFieldValue,
      if (companyId != _sentinel)
        _$ProjectFieldMap['companyId']!: companyId as String,
      if (companyIdFieldValue != null)
        _$ProjectFieldMap['companyId']!: companyIdFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ProjectQuery
    implements QueryReference<Project, ProjectQuerySnapshot> {
  @override
  ProjectQuery limit(int limit);

  @override
  ProjectQuery limitToLast(int limit);

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
  ProjectQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
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
  ProjectQuery whereFieldPath(
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

  ProjectQuery whereDocumentId({
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
  ProjectQuery whereProjectName({
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
  ProjectQuery whereProjectGroupId({
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
  ProjectQuery whereLeadUserId({
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
  ProjectQuery whereAdminUsers({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  ProjectQuery whereCompanyId({
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

  ProjectQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByProjectName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByProjectGroupId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByLeadUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByAdminUsers({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByCompanyId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });
}

class _$ProjectQuery extends QueryReference<Project, ProjectQuerySnapshot>
    implements ProjectQuery {
  _$ProjectQuery(
    this._collection, {
    required Query<Project> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ProjectQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ProjectQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ProjectQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProjectQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ProjectQuery limit(int limit) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery limitToLast(int limit) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ProjectQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
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
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectQuery whereFieldPath(
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
    return _$ProjectQuery(
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

  ProjectQuery whereDocumentId({
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
    return _$ProjectQuery(
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

  ProjectQuery whereProjectName({
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
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['projectName']!,
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

  ProjectQuery whereProjectGroupId({
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
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['projectGroupId']!,
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

  ProjectQuery whereLeadUserId({
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
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['leadUserId']!,
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

  ProjectQuery whereAdminUsers({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['adminUsers']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      $queryCursor: $queryCursor,
    );
  }

  ProjectQuery whereCompanyId({
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
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['companyId']!,
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

  ProjectQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
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

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectQuery orderByProjectName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['projectName']!, descending: descending);
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

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectQuery orderByProjectGroupId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['projectGroupId']!, descending: descending);
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

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectQuery orderByLeadUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['leadUserId']!, descending: descending);
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

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectQuery orderByAdminUsers({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['adminUsers']!, descending: descending);
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

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectQuery orderByCompanyId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['companyId']!, descending: descending);
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

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ProjectDocumentSnapshot extends FirestoreDocumentSnapshot<Project> {
  ProjectDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Project> snapshot;

  @override
  ProjectDocumentReference get reference {
    return ProjectDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Project? data;
}

class ProjectQuerySnapshot
    extends FirestoreQuerySnapshot<Project, ProjectQueryDocumentSnapshot> {
  ProjectQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ProjectQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Project> snapshot,
  ) {
    final docs = snapshot.docs.map(ProjectQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ProjectDocumentSnapshot._,
      );
    }).toList();

    return ProjectQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ProjectDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ProjectDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ProjectDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Project> snapshot;

  @override
  final List<ProjectQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ProjectDocumentSnapshot>> docChanges;
}

class ProjectQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Project>
    implements ProjectDocumentSnapshot {
  ProjectQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Project> snapshot;

  @override
  final Project data;

  @override
  ProjectDocumentReference get reference {
    return ProjectDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      id: json['id'] as String?,
      projectName: json['projectName'] as String,
      projectGroupId: json['projectGroupId'] as String,
      leadUserId: json['leadUserId'] as String,
      adminUsers: (json['adminUsers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyId: json['companyId'] as String,
      currentProjects: (json['currentProjects'] as List<dynamic>?)
          ?.map((e) => CurrentProject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

const _$ProjectFieldMap = <String, String>{
  'id': 'id',
  'projectName': 'projectName',
  'projectGroupId': 'projectGroupId',
  'leadUserId': 'leadUserId',
  'adminUsers': 'adminUsers',
  'companyId': 'companyId',
  'currentProjects': 'currentProjects',
};

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'projectName': instance.projectName,
      'projectGroupId': instance.projectGroupId,
      'leadUserId': instance.leadUserId,
      'adminUsers': instance.adminUsers,
      'companyId': instance.companyId,
      'currentProjects':
          instance.currentProjects?.map((e) => e.toJson()).toList(),
    };
