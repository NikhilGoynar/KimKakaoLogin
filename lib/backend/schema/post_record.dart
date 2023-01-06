import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_record.g.dart';

abstract class PostRecord implements Built<PostRecord, PostRecordBuilder> {
  static Serializer<PostRecord> get serializer => _$postRecordSerializer;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get problem;

  @BuiltValueField(wireName: 'detective_user')
  DocumentReference? get detectiveUser;

  String? get description;

  @BuiltValueField(wireName: 'post_user')
  DocumentReference? get postUser;

  String? get title;

  @BuiltValueField(wireName: 'like_by')
  BuiltList<DocumentReference>? get likeBy;

  @BuiltValueField(wireName: 'comment_count')
  int? get commentCount;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostRecordBuilder builder) => builder
    ..problem = ''
    ..description = ''
    ..title = ''
    ..likeBy = ListBuilder()
    ..commentCount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostRecord._();
  factory PostRecord([void Function(PostRecordBuilder) updates]) = _$PostRecord;

  static PostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostRecordData({
  DateTime? createdTime,
  String? problem,
  DocumentReference? detectiveUser,
  String? description,
  DocumentReference? postUser,
  String? title,
  int? commentCount,
}) {
  final firestoreData = serializers.toFirestore(
    PostRecord.serializer,
    PostRecord(
      (p) => p
        ..createdTime = createdTime
        ..problem = problem
        ..detectiveUser = detectiveUser
        ..description = description
        ..postUser = postUser
        ..title = title
        ..likeBy = null
        ..commentCount = commentCount,
    ),
  );

  return firestoreData;
}
