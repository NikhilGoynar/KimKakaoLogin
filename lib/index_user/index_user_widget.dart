import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IndexUserWidget extends StatefulWidget {
  const IndexUserWidget({
    Key? key,
    this.indexUser,
  }) : super(key: key);

  final UsersRecord? indexUser;

  @override
  _IndexUserWidgetState createState() => _IndexUserWidgetState();
}

class _IndexUserWidgetState extends State<IndexUserWidget> {
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: StreamBuilder<UsersRecord>(
          stream: UsersRecord.getDocument(widget.indexUser!.reference),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                ),
              );
            }
            final columnUsersRecord = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 40, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                          child: InkWell(
                            onTap: () async {
                              context.pop();
                            },
                            child: Icon(
                              Icons.chevron_left_rounded,
                              color: Color(0xFFB0B7BE),
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                          child: Image.asset(
                            'assets/images/logo2.png',
                            width: 100,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                        ),
                        FaIcon(
                          FontAwesomeIcons.userAlt,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 60, 15, 0),
                          child: Container(
                            width: double.infinity,
                            height: 230,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        columnUsersRecord.displayName!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 18,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                      Text(
                                        '탐정',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'NotoSansKR',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 10),
                                  child: Text(
                                    columnUsersRecord.officeDetective!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'NotoSansKR',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 15),
                                  child: Text(
                                    columnUsersRecord.jobDetective!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'NotoSansKR',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 5, 5, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.phone_rounded,
                                          color: Colors.white,
                                          size: 26,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 0, 5, 0),
                                          child: Text(
                                            columnUsersRecord.phoneNumber!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'NotoSansKR',
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  useGoogleFonts: false,
                                                ),
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
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Container(
                            width: 120,
                            height: 120,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              valueOrDefault<String>(
                                columnUsersRecord.photoUrl,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/detective-w5lxdk/assets/2n2jfwopk4av/sander-sammy-ocvLVIrC7c0-unsplash.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('HomePage');
                      },
                      child: Text(
                        '홈으로 돌아가기',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
