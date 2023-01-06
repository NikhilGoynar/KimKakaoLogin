import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'area_record.g.dart';

abstract class AreaRecord implements Built<AreaRecord, AreaRecordBuilder> {
  static Serializer<AreaRecord> get serializer => _$areaRecordSerializer;

  String? get name;

  int? get number;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AreaRecordBuilder builder) => builder
    ..name = ''
    ..number = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('area');

  static Stream<AreaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AreaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AreaRecord._();
  factory AreaRecord([void Function(AreaRecordBuilder) updates]) = _$AreaRecord;

  static AreaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAreaRecordData({
  String? name,
  int? number,
}) {
  final firestoreData = serializers.toFirestore(
    AreaRecord.serializer,
    AreaRecord(
      (a) => a
        ..name = name
        ..number = number,
    ),
  );

  return firestoreData;
}
