// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AreaRecord> _$areaRecordSerializer = new _$AreaRecordSerializer();

class _$AreaRecordSerializer implements StructuredSerializer<AreaRecord> {
  @override
  final Iterable<Type> types = const [AreaRecord, _$AreaRecord];
  @override
  final String wireName = 'AreaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AreaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
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
  AreaRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AreaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
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

class _$AreaRecord extends AreaRecord {
  @override
  final String? name;
  @override
  final int? number;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AreaRecord([void Function(AreaRecordBuilder)? updates]) =>
      (new AreaRecordBuilder()..update(updates))._build();

  _$AreaRecord._({this.name, this.number, this.ffRef}) : super._();

  @override
  AreaRecord rebuild(void Function(AreaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaRecordBuilder toBuilder() => new AreaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AreaRecord &&
        name == other.name &&
        number == other.number &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), number.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AreaRecord')
          ..add('name', name)
          ..add('number', number)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AreaRecordBuilder implements Builder<AreaRecord, AreaRecordBuilder> {
  _$AreaRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AreaRecordBuilder() {
    AreaRecord._initializeBuilder(this);
  }

  AreaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _number = $v.number;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AreaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AreaRecord;
  }

  @override
  void update(void Function(AreaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AreaRecord build() => _build();

  _$AreaRecord _build() {
    final _$result =
        _$v ?? new _$AreaRecord._(name: name, number: number, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
