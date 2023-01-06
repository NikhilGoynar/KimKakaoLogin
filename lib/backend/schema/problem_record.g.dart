// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProblemRecord> _$problemRecordSerializer =
    new _$ProblemRecordSerializer();

class _$ProblemRecordSerializer implements StructuredSerializer<ProblemRecord> {
  @override
  final Iterable<Type> types = const [ProblemRecord, _$ProblemRecord];
  @override
  final String wireName = 'ProblemRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProblemRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.problemList;
    if (value != null) {
      result
        ..add('problem_list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ProblemRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProblemRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'problem_list':
          result.problemList = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ProblemRecord extends ProblemRecord {
  @override
  final String? problemList;
  @override
  final int? number;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProblemRecord([void Function(ProblemRecordBuilder)? updates]) =>
      (new ProblemRecordBuilder()..update(updates))._build();

  _$ProblemRecord._({this.problemList, this.number, this.image, this.ffRef})
      : super._();

  @override
  ProblemRecord rebuild(void Function(ProblemRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProblemRecordBuilder toBuilder() => new ProblemRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProblemRecord &&
        problemList == other.problemList &&
        number == other.number &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, problemList.hashCode), number.hashCode), image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProblemRecord')
          ..add('problemList', problemList)
          ..add('number', number)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProblemRecordBuilder
    implements Builder<ProblemRecord, ProblemRecordBuilder> {
  _$ProblemRecord? _$v;

  String? _problemList;
  String? get problemList => _$this._problemList;
  set problemList(String? problemList) => _$this._problemList = problemList;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProblemRecordBuilder() {
    ProblemRecord._initializeBuilder(this);
  }

  ProblemRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _problemList = $v.problemList;
      _number = $v.number;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProblemRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProblemRecord;
  }

  @override
  void update(void Function(ProblemRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProblemRecord build() => _build();

  _$ProblemRecord _build() {
    final _$result = _$v ??
        new _$ProblemRecord._(
            problemList: problemList,
            number: number,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
