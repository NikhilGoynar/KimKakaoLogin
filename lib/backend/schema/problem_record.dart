import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'problem_record.g.dart';

abstract class ProblemRecord
    implements Built<ProblemRecord, ProblemRecordBuilder> {
  static Serializer<ProblemRecord> get serializer => _$problemRecordSerializer;

  @BuiltValueField(wireName: 'problem_list')
  String? get problemList;

  int? get number;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProblemRecordBuilder builder) => builder
    ..problemList = ''
    ..number = 0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('problem');

  static Stream<ProblemRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProblemRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProblemRecord._();
  factory ProblemRecord([void Function(ProblemRecordBuilder) updates]) =
      _$ProblemRecord;

  static ProblemRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProblemRecordData({
  String? problemList,
  int? number,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    ProblemRecord.serializer,
    ProblemRecord(
      (p) => p
        ..problemList = problemList
        ..number = number
        ..image = image,
    ),
  );

  return firestoreData;
}
