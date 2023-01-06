import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileUserWidget extends StatefulWidget {
  const ProfileUserWidget({Key? key}) : super(key: key);

  @override
  _ProfileUserWidgetState createState() => _ProfileUserWidgetState();
}

class _ProfileUserWidgetState extends State<ProfileUserWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: 350,
        child: Drawer(
          elevation: 0,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0x8B000000),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 80, 0),
                            child: Image.asset(
                              'assets/images/logo2.png',
                              width: 90,
                              height: 60,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: InkWell(
                              onTap: () async {
                                if (scaffoldKey.currentState!.isDrawerOpen ||
                                    scaffoldKey.currentState!.isEndDrawerOpen) {
                                  Navigator.pop(context);
                                }
                              },
                              child: Icon(
                                Icons.close_outlined,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                            child: Container(
                              width: 155,
                              height: 60,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 10, 15, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 10, 0),
                                      child: FaIcon(
                                        FontAwesomeIcons.exclamationCircle,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 26,
                                      ),
                                    ),
                                    Text(
                                      '상담 팁',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 155,
                            height: 60,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 10, 15, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.search,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 26,
                                    ),
                                  ),
                                  Text(
                                    '탐정 찾기',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'NotoSansKR',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 10),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('Case01');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '탐정 사례',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('Case02');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '해결 사례',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('QnA');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Q&A TIP',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('user_postAdd');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '상담글 적기',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Container(
                        width: double.infinity,
                        height: 220,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1E9F5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    18, 0, 18, 7),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed('notice');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '공지사항',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              color: Color(0xFF222222),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF222222),
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 10),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCFD8E2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    18, 0, 18, 7),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '이용약관',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            color: Color(0xFF222222),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF222222),
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 10),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCFD8E2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    18, 0, 18, 7),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '개인정보처리방침',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            color: Color(0xFF222222),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF222222),
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 10),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCFD8E2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    18, 0, 18, 7),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '회사소개',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            color: Color(0xFF222222),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF222222),
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 15, 10),
                                child: Container(
                                  width: double.infinity,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCFD8E2),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    18, 0, 18, 7),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '웅탐정 유튜브',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            color: Color(0xFF222222),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF222222),
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Container(
                        width: double.infinity,
                        height: 75,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidUserCircle,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 26,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      '회원가입',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF5A5D6D),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('Login');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.lock,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 26,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 0, 0),
                                      child: Text(
                                        '로그인',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF5A5D6D),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 3, 0, 0),
                                    child: Icon(
                                      Icons.card_giftcard,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 26,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      '쿠폰함',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '서비스안내',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'NotoSansKR',
                                    color: Color(0xFF272933),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                          child: Text(
                            '/',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'NotoSansKR',
                                      color: Color(0xFF272933),
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        Text(
                          '탐정에대해',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'NotoSansKR',
                                    color: Color(0xFF272933),
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 40, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () async {
                                scaffoldKey.currentState!.openDrawer();
                              },
                              child: Icon(
                                Icons.menu_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 28,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                context.pushNamed('user_requestAdd');
                              },
                              child: Image.asset(
                                'assets/images/logo2.png',
                                width: 70,
                                height: 50,
                                fit: BoxFit.contain,
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                GoRouter.of(context).prepareAuthEvent();
                                await signOut();

                                context.goNamedAuth('onboding', mounted);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.userAlt,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 40, 15, 0),
                              child: Container(
                                width: double.infinity,
                                height: 130,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: Text(
                                        '의뢰인',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              currentUserDisplayName,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'NotoSansKR',
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            '님',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'NotoSansKR',
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Container(
                                  width: 85,
                                  height: 85,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      currentUserPhoto,
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/detective-w5lxdk/assets/l1otp8l9vvbh/user.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.15, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(() => isMediaUploading = true);
                                      var downloadUrls = <String>[];
                                      try {
                                        downloadUrls = (await Future.wait(
                                          selectedMedia.map(
                                            (m) async => await uploadData(
                                                m.storagePath, m.bytes),
                                          ),
                                        ))
                                            .where((u) => u != null)
                                            .map((u) => u!)
                                            .toList();
                                      } finally {
                                        isMediaUploading = false;
                                      }
                                      if (downloadUrls.length ==
                                          selectedMedia.length) {
                                        setState(() => uploadedFileUrl =
                                            downloadUrls.first);
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }

                                    final usersUpdateData =
                                        createUsersRecordData(
                                      photoUrl: uploadedFileUrl,
                                    );
                                    await currentUserReference!
                                        .update(usersUpdateData);
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.05, 0),
                                      child: FaIcon(
                                        FontAwesomeIcons.pen,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 30, 15, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                          child: Text(
                            '상담',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'NotoSansKR',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Text(
                          '문의 내역',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'NotoSansKR',
                                    fontSize: 16,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('userPostList');
                            },
                            child: Text(
                              '더보기',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          StreamBuilder<List<PostRecord>>(
                            stream: queryPostRecord(
                              queryBuilder: (postRecord) => postRecord
                                  .where('post_user',
                                      isEqualTo: currentUserReference)
                                  .orderBy('created_time', descending: true),
                              limit: 2,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<PostRecord> columnPostRecordList =
                                  snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnPostRecordList.length, (columnIndex) {
                                  final columnPostRecord =
                                      columnPostRecordList[columnIndex];
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 15, 12, 0),
                                        child: Text(
                                          columnPostRecord.description!,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 5, 12, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                dateTimeFormat(
                                                    'yMd',
                                                    columnPostRecord
                                                        .createdTime!),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'NotoSansKR',
                                                      color: Color(0xFFA1A1A1),
                                                      fontSize: 12,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 3, 0),
                                              child: Icon(
                                                Icons.group,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 20,
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                columnPostRecord.commentCount
                                                    ?.toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'NotoSansKR',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    fontSize: 12,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            Text(
                                              '명',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'NotoSansKR',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    fontSize: 12,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            Text(
                                              '답변',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'NotoSansKR',
                                                    color: Color(0xFFA1A1A1),
                                                    fontSize: 12,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 10, 12, 0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD5DBE1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                          child: Text(
                            '의뢰',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'NotoSansKR',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Text(
                          '문의 내역',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'NotoSansKR',
                                    fontSize: 16,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                          child: Icon(
                            Icons.chevron_right_rounded,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '더보기',
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'NotoSansKR',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          StreamBuilder<List<RequestRecord>>(
                            stream: queryRequestRecord(
                              queryBuilder: (requestRecord) => requestRecord
                                  .where('post_user',
                                      isEqualTo: currentUserReference)
                                  .orderBy('created_time', descending: true),
                              limit: 2,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<RequestRecord> columnRequestRecordList =
                                  snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnRequestRecordList.length,
                                    (columnIndex) {
                                  final columnRequestRecord =
                                      columnRequestRecordList[columnIndex];
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 15, 12, 0),
                                        child: Text(
                                          columnRequestRecord.title!,
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 5, 12, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                dateTimeFormat(
                                                    'yMd',
                                                    columnRequestRecord
                                                        .createdTime!),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'NotoSansKR',
                                                      color: Color(0xFFA1A1A1),
                                                      fontSize: 12,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 10, 12, 0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 1,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD5DBE1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                          child: Text(
                            '관심',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'NotoSansKR',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Text(
                          '탐정',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'NotoSansKR',
                                    fontSize: 16,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(
                        queryBuilder: (usersRecord) => usersRecord.where(
                            'like_by',
                            arrayContains: currentUserReference),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<UsersRecord> rowUsersRecordList = snapshot.data!;
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(rowUsersRecordList.length,
                                (rowIndex) {
                              final rowUsersRecord =
                                  rowUsersRecordList[rowIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              rowUsersRecord.photoUrl,
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/detective-w5lxdk/assets/2n2jfwopk4av/sander-sammy-ocvLVIrC7c0-unsplash.jpg',
                                            ),
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            rowUsersRecord.displayName!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'NotoSansKR',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          '탐정',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                          child: Text(
                            '추천',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'NotoSansKR',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 16,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Text(
                          '탐정',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'NotoSansKR',
                                    fontSize: 16,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 25),
                    child: StreamBuilder<List<UsersRecord>>(
                      stream: queryUsersRecord(
                        queryBuilder: (usersRecord) => usersRecord
                            .where('level', isEqualTo: 2)
                            .orderBy('area'),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<UsersRecord> rowUsersRecordList = snapshot.data!;
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(rowUsersRecordList.length,
                                (rowIndex) {
                              final rowUsersRecord =
                                  rowUsersRecordList[rowIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              rowUsersRecord.photoUrl,
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/detective-w5lxdk/assets/2n2jfwopk4av/sander-sammy-ocvLVIrC7c0-unsplash.jpg',
                                            ),
                                            width: 80,
                                            height: 80,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            rowUsersRecord.displayName!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'NotoSansKR',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          '탐정',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 10),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '탐정 등록하기',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 10),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '공지사항',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 10),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Q&A',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 10),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '웅탐정 유튜브',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 40),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '고객센터 문의하기',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 7, 0),
                              child: Icon(
                                Icons.chevron_right_rounded,
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFF272933),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '주식회사 ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.white,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              '웅탐정',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Color(0xFF7D8AF6),
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '대표',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.white,
                                    fontSize: 12,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                              child: Text(
                                '홍길동',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'NotoSansKR',
                                      color: Color(0xFFD9D9D9),
                                      fontSize: 12,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '사업자등록번호',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.white,
                                    fontSize: 12,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                              child: Text(
                                '123-12-12345',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'NotoSansKR',
                                      color: Color(0xFFD9D9D9),
                                      fontSize: 12,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '통신판매업신고번호',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.white,
                                    fontSize: 12,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                              child: Text(
                                '제1234-서울서초-12345호',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'NotoSansKR',
                                      color: Color(0xFFD9D9D9),
                                      fontSize: 12,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '주소',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.white,
                                    fontSize: 12,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                              child: Text(
                                '서울시 OO구 OOO로 OO길 OOO-OO',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'NotoSansKR',
                                      color: Color(0xFFD9D9D9),
                                      fontSize: 12,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '대표번호',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'NotoSansKR',
                                    color: Colors.white,
                                    fontSize: 12,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                              child: Text(
                                '1588-1588',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'NotoSansKR',
                                      color: Color(0xFFD9D9D9),
                                      fontSize: 12,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
