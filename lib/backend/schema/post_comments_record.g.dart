// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostCommentsRecord> _$postCommentsRecordSerializer =
    new _$PostCommentsRecordSerializer();

class _$PostCommentsRecordSerializer
    implements StructuredSerializer<PostCommentsRecord> {
  @override
  final Iterable<Type> types = const [PostCommentsRecord, _$PostCommentsRecord];
  @override
  final String wireName = 'PostCommentsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PostCommentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.problem;
    if (value != null) {
      result
        ..add('problem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detectiveUser;
    if (value != null) {
      result
        ..add('detective_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postUser;
    if (value != null) {
      result
        ..add('post_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likeBy;
    if (value != null) {
      result
        ..add('like_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PostCommentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostCommentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'problem':
          result.problem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detective_user':
          result.detectiveUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'post_user':
          result.postUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'like_by':
          result.likeBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PostCommentsRecord extends PostCommentsRecord {
  @override
  final DateTime? createdTime;
  @override
  final String? problem;
  @override
  final DocumentReference<Object?>? detectiveUser;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? postUser;
  @override
  final String? title;
  @override
  final BuiltList<DocumentReference<Object?>>? likeBy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostCommentsRecord(
          [void Function(PostCommentsRecordBuilder)? updates]) =>
      (new PostCommentsRecordBuilder()..update(updates))._build();

  _$PostCommentsRecord._(
      {this.createdTime,
      this.problem,
      this.detectiveUser,
      this.description,
      this.postUser,
      this.title,
      this.likeBy,
      this.ffRef})
      : super._();

  @override
  PostCommentsRecord rebuild(
          void Function(PostCommentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostCommentsRecordBuilder toBuilder() =>
      new PostCommentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostCommentsRecord &&
        createdTime == other.createdTime &&
        problem == other.problem &&
        detectiveUser == other.detectiveUser &&
        description == other.description &&
        postUser == other.postUser &&
        title == other.title &&
        likeBy == other.likeBy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, createdTime.hashCode), problem.hashCode),
                            detectiveUser.hashCode),
                        description.hashCode),
                    postUser.hashCode),
                title.hashCode),
            likeBy.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostCommentsRecord')
          ..add('createdTime', createdTime)
          ..add('problem', problem)
          ..add('detectiveUser', detectiveUser)
          ..add('description', description)
          ..add('postUser', postUser)
          ..add('title', title)
          ..add('likeBy', likeBy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostCommentsRecordBuilder
    implements Builder<PostCommentsRecord, PostCommentsRecordBuilder> {
  _$PostCommentsRecord? _$v;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _problem;
  String? get problem => _$this._problem;
  set problem(String? problem) => _$this._problem = problem;

  DocumentReference<Object?>? _detectiveUser;
  DocumentReference<Object?>? get detectiveUser => _$this._detectiveUser;
  set detectiveUser(DocumentReference<Object?>? detectiveUser) =>
      _$this._detectiveUser = detectiveUser;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _postUser;
  DocumentReference<Object?>? get postUser => _$this._postUser;
  set postUser(DocumentReference<Object?>? postUser) =>
      _$this._postUser = postUser;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<DocumentReference<Object?>>? _likeBy;
  ListBuilder<DocumentReference<Object?>> get likeBy =>
      _$this._likeBy ??= new ListBuilder<DocumentReference<Object?>>();
  set likeBy(ListBuilder<DocumentReference<Object?>>? likeBy) =>
      _$this._likeBy = likeBy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostCommentsRecordBuilder() {
    PostCommentsRecord._initializeBuilder(this);
  }

  PostCommentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _problem = $v.problem;
      _detectiveUser = $v.detectiveUser;
      _description = $v.description;
      _postUser = $v.postUser;
      _title = $v.title;
      _likeBy = $v.likeBy?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostCommentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostCommentsRecord;
  }

  @override
  void update(void Function(PostCommentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostCommentsRecord build() => _build();

  _$PostCommentsRecord _build() {
    _$PostCommentsRecord _$result;
    try {
      _$result = _$v ??
          new _$PostCommentsRecord._(
              createdTime: createdTime,
              problem: problem,
              detectiveUser: detectiveUser,
              description: description,
              postUser: postUser,
              title: title,
              likeBy: _likeBy?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likeBy';
        _likeBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostCommentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
