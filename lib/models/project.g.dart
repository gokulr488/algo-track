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
abstract class ProjectsCollectionReference
    implements
        ProjectsQuery,
        FirestoreCollectionReference<Project, ProjectsQuerySnapshot> {
  factory ProjectsCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ProjectsCollectionReference;

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
  ProjectsDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ProjectsDocumentReference> add(Project value);
}

class _$ProjectsCollectionReference extends _$ProjectsQuery
    implements ProjectsCollectionReference {
  factory _$ProjectsCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ProjectsCollectionReference._(
      firestore.collection('projects').withConverter(
            fromFirestore: ProjectsCollectionReference.fromFirestore,
            toFirestore: ProjectsCollectionReference.toFirestore,
          ),
    );
  }

  _$ProjectsCollectionReference._(
    CollectionReference<Project> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Project> get reference =>
      super.reference as CollectionReference<Project>;

  @override
  ProjectsDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ProjectsDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ProjectsDocumentReference> add(Project value) {
    return reference.add(value).then((ref) => ProjectsDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectsCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ProjectsDocumentReference
    extends FirestoreDocumentReference<Project, ProjectsDocumentSnapshot> {
  factory ProjectsDocumentReference(DocumentReference<Project> reference) =
      _$ProjectsDocumentReference;

  DocumentReference<Project> get reference;

  /// A reference to the [ProjectsCollectionReference] containing this document.
  ProjectsCollectionReference get parent {
    return _$ProjectsCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectsDocumentSnapshot> snapshots();

  @override
  Future<ProjectsDocumentSnapshot> get([GetOptions? options]);

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

class _$ProjectsDocumentReference
    extends FirestoreDocumentReference<Project, ProjectsDocumentSnapshot>
    implements ProjectsDocumentReference {
  _$ProjectsDocumentReference(this.reference);

  @override
  final DocumentReference<Project> reference;

  /// A reference to the [ProjectsCollectionReference] containing this document.
  ProjectsCollectionReference get parent {
    return _$ProjectsCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectsDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ProjectsDocumentSnapshot._);
  }

  @override
  Future<ProjectsDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProjectsDocumentSnapshot._);
  }

  @override
  Future<ProjectsDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ProjectsDocumentSnapshot._);
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
        _$ProjectsFieldMap['projectName']!: projectName as String,
      if (projectNameFieldValue != null)
        _$ProjectsFieldMap['projectName']!: projectNameFieldValue,
      if (projectGroupId != _sentinel)
        _$ProjectsFieldMap['projectGroupId']!: projectGroupId as String,
      if (projectGroupIdFieldValue != null)
        _$ProjectsFieldMap['projectGroupId']!: projectGroupIdFieldValue,
      if (leadUserId != _sentinel)
        _$ProjectsFieldMap['leadUserId']!: leadUserId as String,
      if (leadUserIdFieldValue != null)
        _$ProjectsFieldMap['leadUserId']!: leadUserIdFieldValue,
      if (adminUsers != _sentinel)
        _$ProjectsFieldMap['adminUsers']!: adminUsers as List<String>?,
      if (adminUsersFieldValue != null)
        _$ProjectsFieldMap['adminUsers']!: adminUsersFieldValue,
      if (companyId != _sentinel)
        _$ProjectsFieldMap['companyId']!: companyId as String,
      if (companyIdFieldValue != null)
        _$ProjectsFieldMap['companyId']!: companyIdFieldValue,
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
        _$ProjectsFieldMap['projectName']!: projectName as String,
      if (projectNameFieldValue != null)
        _$ProjectsFieldMap['projectName']!: projectNameFieldValue,
      if (projectGroupId != _sentinel)
        _$ProjectsFieldMap['projectGroupId']!: projectGroupId as String,
      if (projectGroupIdFieldValue != null)
        _$ProjectsFieldMap['projectGroupId']!: projectGroupIdFieldValue,
      if (leadUserId != _sentinel)
        _$ProjectsFieldMap['leadUserId']!: leadUserId as String,
      if (leadUserIdFieldValue != null)
        _$ProjectsFieldMap['leadUserId']!: leadUserIdFieldValue,
      if (adminUsers != _sentinel)
        _$ProjectsFieldMap['adminUsers']!: adminUsers as List<String>?,
      if (adminUsersFieldValue != null)
        _$ProjectsFieldMap['adminUsers']!: adminUsersFieldValue,
      if (companyId != _sentinel)
        _$ProjectsFieldMap['companyId']!: companyId as String,
      if (companyIdFieldValue != null)
        _$ProjectsFieldMap['companyId']!: companyIdFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectsDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ProjectsQuery
    implements QueryReference<Project, ProjectsQuerySnapshot> {
  @override
  ProjectsQuery limit(int limit);

  @override
  ProjectsQuery limitToLast(int limit);

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
  ProjectsQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
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
  ProjectsQuery whereFieldPath(
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

  ProjectsQuery whereDocumentId({
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
  ProjectsQuery whereProjectName({
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
  ProjectsQuery whereProjectGroupId({
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
  ProjectsQuery whereLeadUserId({
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
  ProjectsQuery whereAdminUsers({
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
  ProjectsQuery whereCompanyId({
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

  ProjectsQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  });

  ProjectsQuery orderByProjectName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  });

  ProjectsQuery orderByProjectGroupId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  });

  ProjectsQuery orderByLeadUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  });

  ProjectsQuery orderByAdminUsers({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  });

  ProjectsQuery orderByCompanyId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  });
}

class _$ProjectsQuery extends QueryReference<Project, ProjectsQuerySnapshot>
    implements ProjectsQuery {
  _$ProjectsQuery(
    this._collection, {
    required Query<Project> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ProjectsQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ProjectsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ProjectsQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ProjectsQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ProjectsQuery limit(int limit) {
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectsQuery limitToLast(int limit) {
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  ProjectsQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
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
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectsQuery whereFieldPath(
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
    return _$ProjectsQuery(
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

  ProjectsQuery whereDocumentId({
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
    return _$ProjectsQuery(
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

  ProjectsQuery whereProjectName({
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
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectsFieldMap['projectName']!,
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

  ProjectsQuery whereProjectGroupId({
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
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectsFieldMap['projectGroupId']!,
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

  ProjectsQuery whereLeadUserId({
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
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectsFieldMap['leadUserId']!,
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

  ProjectsQuery whereAdminUsers({
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
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectsFieldMap['adminUsers']!,
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

  ProjectsQuery whereCompanyId({
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
    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectsFieldMap['companyId']!,
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

  ProjectsQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
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

    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectsQuery orderByProjectName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectsFieldMap['projectName']!, descending: descending);
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

    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectsQuery orderByProjectGroupId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectsFieldMap['projectGroupId']!, descending: descending);
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

    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectsQuery orderByLeadUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectsFieldMap['leadUserId']!, descending: descending);
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

    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectsQuery orderByAdminUsers({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectsFieldMap['adminUsers']!, descending: descending);
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

    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  ProjectsQuery orderByCompanyId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectsDocumentSnapshot? startAtDocument,
    ProjectsDocumentSnapshot? endAtDocument,
    ProjectsDocumentSnapshot? endBeforeDocument,
    ProjectsDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectsFieldMap['companyId']!, descending: descending);
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

    return _$ProjectsQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectsQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ProjectsDocumentSnapshot extends FirestoreDocumentSnapshot<Project> {
  ProjectsDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Project> snapshot;

  @override
  ProjectsDocumentReference get reference {
    return ProjectsDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Project? data;
}

class ProjectsQuerySnapshot
    extends FirestoreQuerySnapshot<Project, ProjectsQueryDocumentSnapshot> {
  ProjectsQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ProjectsQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Project> snapshot,
  ) {
    final docs = snapshot.docs.map(ProjectsQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ProjectsDocumentSnapshot._,
      );
    }).toList();

    return ProjectsQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ProjectsDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ProjectsDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ProjectsDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Project> snapshot;

  @override
  final List<ProjectsQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ProjectsDocumentSnapshot>> docChanges;
}

class ProjectsQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Project>
    implements ProjectsDocumentSnapshot {
  ProjectsQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Project> snapshot;

  @override
  final Project data;

  @override
  ProjectsDocumentReference get reference {
    return ProjectsDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectsFromJson(Map<String, dynamic> json) => Project(
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

const _$ProjectsFieldMap = <String, String>{
  'id': 'id',
  'projectName': 'projectName',
  'projectGroupId': 'projectGroupId',
  'leadUserId': 'leadUserId',
  'adminUsers': 'adminUsers',
  'companyId': 'companyId',
  'currentProjects': 'currentProjects',
};

Map<String, dynamic> _$ProjectsToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'projectName': instance.projectName,
      'projectGroupId': instance.projectGroupId,
      'leadUserId': instance.leadUserId,
      'adminUsers': instance.adminUsers,
      'companyId': instance.companyId,
      'currentProjects':
          instance.currentProjects?.map((e) => e.toJson()).toList(),
    };
