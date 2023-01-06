import '../auth/auth_util.dart';
import '../auth/firebase_user_provider.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
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
                child: SingleChildScrollView(
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
                                      scaffoldKey
                                          .currentState!.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                                child: Icon(
                                  Icons.close_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
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
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Container(
                                width: 155,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 10, 15, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 10, 15, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 10, 15, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 10, 15, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 10),
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (!loggedIn)
                                      InkWell(
                                        onTap: () async {
                                          context.pushNamed('Login');
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.unlock,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 26,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                '로그인',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'NotoSansKR',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (loggedIn)
                                      InkWell(
                                        onTap: () async {
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          await signOut();

                                          context.goNamedAuth(
                                              'onboding', mounted);
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.lock,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 26,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 4, 0, 0),
                                              child: Text(
                                                '로그아웃',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'NotoSansKR',
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
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
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
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
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 28,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              GoRouter.of(context).prepareAuthEvent();
                              await signOut();

                              context.goNamedAuth('onboding', mounted);
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
                              if (valueOrDefault(
                                      currentUserDocument?.level, 0) ==
                                  2) {
                                context.pushNamed('profileDet');
                              } else {
                                context.pushNamed('profileUser');
                              }
                            },
                            child: FaIcon(
                              FontAwesomeIcons.userAlt,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Color(0xFF5A5D6D),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: textController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: '키워드 검색',
                                    hintStyle:
                                        FlutterFlowTheme.of(context).bodyText2,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        topRight: Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'NotoSansKR',
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: FaIcon(
                                  FontAwesomeIcons.search,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: Text(
                        '의뢰가 처음이신가요?',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'NotoSansKR',
                              fontSize: 16,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Container(
                            width: 173,
                            height: 150,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 20, 15, 20),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.questionCircle,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '의뢰\n문의 방법',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              color: Colors.white,
                                              fontSize: 16,
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
                        Container(
                          width: 173,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 20, 15, 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.question_answer,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '탐정\n지식인 Q&A',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'NotoSansKR',
                                            color: Colors.white,
                                            fontSize: 16,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('user_postAdd');
                                },
                                child: Container(
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '상담글 적기',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 16,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 10, 5),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('user_requestAdd');
                                },
                                child: Container(
                                  width: 150,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '의뢰서 적기',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 16,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Text(
                            '분야별 ',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Text(
                            '탐정 찾기',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'NotoSansKR',
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: StreamBuilder<List<ProblemRecord>>(
                        stream: queryProblemRecord(
                          queryBuilder: (problemRecord) =>
                              problemRecord.orderBy('number'),
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
                          List<ProblemRecord> rowProblemRecordList =
                              snapshot.data!;
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                  rowProblemRecordList.length, (rowIndex) {
                                final rowProblemRecord =
                                    rowProblemRecordList[rowIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 5, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'indexProblem',
                                        queryParams: {
                                          'problemRef': serializeParam(
                                            rowProblemRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: 110,
                                      height: 75,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.network(
                                              rowProblemRecord.image!,
                                              width: 30,
                                              height: 30,
                                              fit: BoxFit.contain,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Text(
                                                rowProblemRecord.problemList!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'NotoSansKR',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            '지역별 ',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            '탐정 찾기',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'NotoSansKR',
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: StreamBuilder<List<AreaRecord>>(
                        stream: queryAreaRecord(
                          queryBuilder: (areaRecord) =>
                              areaRecord.orderBy('number'),
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
                          List<AreaRecord> rowAreaRecordList = snapshot.data!;
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(rowAreaRecordList.length,
                                  (rowIndex) {
                                final rowAreaRecord =
                                    rowAreaRecordList[rowIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 5, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'indexArea',
                                        queryParams: {
                                          'indexAreaRef': serializeParam(
                                            rowAreaRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 7, 20, 7),
                                        child: Text(
                                          rowAreaRecord.name!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'NotoSansKR',
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            '인기 ',
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            '탐정 찾기',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'NotoSansKR',
                                      fontSize: 16,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                      child: StreamBuilder<List<UsersRecord>>(
                        stream: queryUsersRecord(
                          queryBuilder: (usersRecord) =>
                              usersRecord.where('level', isEqualTo: 2),
                          limit: 6,
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
                          List<UsersRecord> wrapUsersRecordList =
                              snapshot.data!;
                          return Wrap(
                            spacing: 8,
                            runSpacing: 4,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(wrapUsersRecordList.length,
                                (wrapIndex) {
                              final wrapUsersRecord =
                                  wrapUsersRecordList[wrapIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 12),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 8),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              valueOrDefault<String>(
                                                wrapUsersRecord.photoUrl,
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/detective-w5lxdk/assets/2n2jfwopk4av/sander-sammy-ocvLVIrC7c0-unsplash.jpg',
                                              ),
                                              width: double.infinity,
                                              height: 140,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 5, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 2, 0),
                                                child: Text(
                                                  wrapUsersRecord.displayName!,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  '탐정',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF101213),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 3, 0),
                                                child: Icon(
                                                  Icons.star_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  size: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 3, 5, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  wrapUsersRecord
                                                      .officeDetective!,
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                '5.0',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'NotoSansKR',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 10, 5, 5),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '기업 전문 탐정 변호사',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'NotoSansKR',
                                                      color: Color(0xFF222222),
                                                      fontWeight:
                                                          FontWeight.w500,
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
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
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
