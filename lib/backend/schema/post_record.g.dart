// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostRecord> _$postRecordSerializer = new _$PostRecordSerializer();

class _$PostRecordSerializer implements StructuredSerializer<PostRecord> {
  @override
  final Iterable<Type> types = const [PostRecord, _$PostRecord];
  @override
  final String wireName = 'PostRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostRecord object,
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
    value = object.commentCount;
    if (value != null) {
      result
        ..add('comment_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  PostRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostRecordBuilder();

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
        case 'comment_count':
          result.commentCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$PostRecord extends PostRecord {
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
  final int? commentCount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostRecord([void Function(PostRecordBuilder)? updates]) =>
      (new PostRecordBuilder()..update(updates))._build();

  _$PostRecord._(
      {this.createdTime,
      this.problem,
      this.detectiveUser,
      this.description,
      this.postUser,
      this.title,
      this.likeBy,
      this.commentCount,
      this.ffRef})
      : super._();

  @override
  PostRecord rebuild(void Function(PostRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostRecordBuilder toBuilder() => new PostRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostRecord &&
        createdTime == other.createdTime &&
        problem == other.problem &&
        detectiveUser == other.detectiveUser &&
        description == other.description &&
        postUser == other.postUser &&
        title == other.title &&
        likeBy == other.likeBy &&
        commentCount == other.commentCount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, createdTime.hashCode),
                                    problem.hashCode),
                                detectiveUser.hashCode),
                            description.hashCode),
                        postUser.hashCode),
                    title.hashCode),
                likeBy.hashCode),
            commentCount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostRecord')
          ..add('createdTime', createdTime)
          ..add('problem', problem)
          ..add('detectiveUser', detectiveUser)
          ..add('description', description)
          ..add('postUser', postUser)
          ..add('title', title)
          ..add('likeBy', likeBy)
          ..add('commentCount', commentCount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostRecordBuilder implements Builder<PostRecord, PostRecordBuilder> {
  _$PostRecord? _$v;

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

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostRecordBuilder() {
    PostRecord._initializeBuilder(this);
  }

  PostRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _problem = $v.problem;
      _detectiveUser = $v.detectiveUser;
      _description = $v.description;
      _postUser = $v.postUser;
      _title = $v.title;
      _likeBy = $v.likeBy?.toBuilder();
      _commentCount = $v.commentCount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostRecord;
  }

  @override
  void update(void Function(PostRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostRecord build() => _build();

  _$PostRecord _build() {
    _$PostRecord _$result;
    try {
      _$result = _$v ??
          new _$PostRecord._(
              createdTime: createdTime,
              problem: problem,
              detectiveUser: detectiveUser,
              description: description,
              postUser: postUser,
              title: title,
              likeBy: _likeBy?.build(),
              commentCount: commentCount,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likeBy';
        _likeBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
