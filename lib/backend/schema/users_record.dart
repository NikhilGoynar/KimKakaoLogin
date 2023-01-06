import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get area;

  int? get level;

  @BuiltValueField(wireName: 'office_detective')
  String? get officeDetective;

  @BuiltValueField(wireName: 'job_detective')
  String? get jobDetective;

  @BuiltValueField(wireName: 'friend_user')
  String? get friendUser;

  String? get route;

  BuiltList<String>? get problem;

  @BuiltValueField(wireName: 'like_by')
  BuiltList<DocumentReference>? get likeBy;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..area = ''
    ..level = 0
    ..officeDetective = ''
    ..jobDetective = ''
    ..friendUser = ''
    ..route = ''
    ..problem = ListBuilder()
    ..likeBy = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? area,
  int? level,
  String? officeDetective,
  String? jobDetective,
  String? friendUser,
  String? route,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..area = area
        ..level = level
        ..officeDetective = officeDetective
        ..jobDetective = jobDetective
        ..friendUser = friendUser
        ..route = route
        ..problem = null
        ..likeBy = null,
    ),
  );

  return firestoreData;
}
