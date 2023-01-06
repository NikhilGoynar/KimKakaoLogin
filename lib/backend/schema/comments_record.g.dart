// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentsRecord> _$commentsRecordSerializer =
    new _$CommentsRecordSerializer();

class _$CommentsRecordSerializer
    implements StructuredSerializer<CommentsRecord> {
  @override
  final Iterable<Type> types = const [CommentsRecord, _$CommentsRecord];
  @override
  final String wireName = 'CommentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.detUser;
    if (value != null) {
      result
        ..add('det_user')
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
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fileList;
    if (value != null) {
      result
        ..add('file_list')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  CommentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'det_user':
          result.detUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'file_list':
          result.fileList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$CommentsRecord extends CommentsRecord {
  @override
  final DocumentReference<Object?>? detUser;
  @override
  final String? description;
  @override
  final DateTime? createdTime;
  @override
  final BuiltList<String>? fileList;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommentsRecord([void Function(CommentsRecordBuilder)? updates]) =>
      (new CommentsRecordBuilder()..update(updates))._build();

  _$CommentsRecord._(
      {this.detUser,
      this.description,
      this.createdTime,
      this.fileList,
      this.ffRef})
      : super._();

  @override
  CommentsRecord rebuild(void Function(CommentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsRecordBuilder toBuilder() =>
      new CommentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsRecord &&
        detUser == other.detUser &&
        description == other.description &&
        createdTime == other.createdTime &&
        fileList == other.fileList &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, detUser.hashCode), description.hashCode),
                createdTime.hashCode),
            fileList.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentsRecord')
          ..add('detUser', detUser)
          ..add('description', description)
          ..add('createdTime', createdTime)
          ..add('fileList', fileList)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommentsRecordBuilder
    implements Builder<CommentsRecord, CommentsRecordBuilder> {
  _$CommentsRecord? _$v;

  DocumentReference<Object?>? _detUser;
  DocumentReference<Object?>? get detUser => _$this._detUser;
  set detUser(DocumentReference<Object?>? detUser) => _$this._detUser = detUser;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  ListBuilder<String>? _fileList;
  ListBuilder<String> get fileList =>
      _$this._fileList ??= new ListBuilder<String>();
  set fileList(ListBuilder<String>? fileList) => _$this._fileList = fileList;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommentsRecordBuilder() {
    CommentsRecord._initializeBuilder(this);
  }

  CommentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detUser = $v.detUser;
      _description = $v.description;
      _createdTime = $v.createdTime;
      _fileList = $v.fileList?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentsRecord;
  }

  @override
  void update(void Function(CommentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentsRecord build() => _build();

  _$CommentsRecord _build() {
    _$CommentsRecord _$result;
    try {
      _$result = _$v ??
          new _$CommentsRecord._(
              detUser: detUser,
              description: description,
              createdTime: createdTime,
              fileList: _fileList?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fileList';
        _fileList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
