import 'package:easy_debounce/easy_debounce.dart';

import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  TextEditingController textController1;
  bool passwordVisibility1;
  TextEditingController textController2;
  TextEditingController textController3;
  bool passwordVisibility2;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    passwordVisibility1 = false;
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    passwordVisibility2 = false;
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFF4B39EF),
      body: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFEEEEEE),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.asset(
                    'assets/images/Other_20.png',
                  ).image,
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-0.11, -0.12),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Material(
                color: Colors.transparent,
                elevation: 20,
                shape: const RoundedRectangleBorder(
                  // ignore: unnecessary_const
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFE4ECFB),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 100,
                        color: Colors.black,
                        spreadRadius: 10,
                      )
                    ],
                    // ignore: unnecessary_const
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.09, 0.45),
            child: Material(
              color: Colors.transparent,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                width: 350,
                height: 600,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFB1C1E0), Colors.white],
                    stops: [0, 1],
                    begin: AlignmentDirectional(1, 0.67),
                    end: AlignmentDirectional(-1, -0.67),
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                      child: Text(
                        'Sign up',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Work Sans',
                              color: Colors.black,
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.27, 0.8),
                      child: Text(
                        'Registered account? ',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.61, 0.84),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginWidget(),
                            ),
                          );
                        },
                        text: 'Signin',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Colors.transparent,
                          textStyle: GoogleFonts.getFont(
                            'Work Sans',
                            color: const Color(0xFF4624C2),
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-5.48, 0.23),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController1',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          controller: textController1,
                          obscureText: !passwordVisibility1,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7E000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7E000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    passwordVisibility1 = !passwordVisibility1,
                              ),
                              child: Icon(
                                passwordVisibility1
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: const Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style: const TextStyle(),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.07, 0.61),
                      child: FFButtonWidget(
                        onPressed: () {
                          // ignore: avoid_print
                          print('Button pressed ...');
                        },
                        text: 'Sign Up',
                        options: FFButtonOptions(
                          width: 287.03,
                          height: 45,
                          color: const Color(0xFF4624C2),
                          textStyle: GoogleFonts.getFont(
                            'Work Sans',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: 30,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(3.56, -0.36),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                        child: TextFormField(
                          controller: textController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7C000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7C000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          ),
                          style: GoogleFonts.getFont(
                            'Work Sans',
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(2.44, -0.05),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController3',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          controller: textController3,
                          obscureText: !passwordVisibility2,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7E000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7E000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    passwordVisibility2 = !passwordVisibility2,
                              ),
                              child: Icon(
                                passwordVisibility2
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: const Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style: const TextStyle(),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(8.67, -0.64),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: TextFormField(
                          controller: textController4,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7D000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x7D000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: const TextStyle(),
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

