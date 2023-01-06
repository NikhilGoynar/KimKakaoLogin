import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_comments_record.g.dart';

abstract class PostCommentsRecord
    implements Built<PostCommentsRecord, PostCommentsRecordBuilder> {
  static Serializer<PostCommentsRecord> get serializer =>
      _$postCommentsRecordSerializer;

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

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PostCommentsRecordBuilder builder) => builder
    ..problem = ''
    ..description = ''
    ..title = ''
    ..likeBy = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('postComments')
          : FirebaseFirestore.instance.collectionGroup('postComments');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('postComments').doc();

  static Stream<PostCommentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostCommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostCommentsRecord._();
  factory PostCommentsRecord(
          [void Function(PostCommentsRecordBuilder) updates]) =
      _$PostCommentsRecord;

  static PostCommentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostCommentsRecordData({
  DateTime? createdTime,
  String? problem,
  DocumentReference? detectiveUser,
  String? description,
  DocumentReference? postUser,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    PostCommentsRecord.serializer,
    PostCommentsRecord(
      (p) => p
        ..createdTime = createdTime
        ..problem = problem
        ..detectiveUser = detectiveUser
        ..description = description
        ..postUser = postUser
        ..title = title
        ..likeBy = null,
    ),
  );

  return firestoreData;
}
