// ignore_for_file: deprecated_member_use

import 'package:easy_debounce/easy_debounce.dart';

import '../signup/signup_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFF4B39EF),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 350,
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
          Align(
            alignment: const AlignmentDirectional(-0.11, -0.12),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
              child: Material(
                color: Colors.transparent,
                elevation: 20,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
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
                        color: Colors.transparent,
                        spreadRadius: 10,
                      )
                    ],
                    borderRadius: BorderRadius.only(
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
                height: 400,
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
                        'Sign in',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Work Sans',
                              color: Colors.black,
                              fontSize: 25,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.12, 0.56),
                      child: Text(
                        'To register account? \n\n                  or ',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-0.45, 0.93),
                      child: Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Other_20.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(8.67, -0.64),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: TextFormField(
                          controller: textController1,
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
                    Align(
                      alignment: const AlignmentDirectional(0.05, 0.94),
                      child: Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Other_20.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0.22),
                      child: FFButtonWidget(
                        onPressed: () {
                          // ignore: avoid_print
                          print('Button pressed ...');
                        },
                        text: 'Sign In',
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
                      alignment: const AlignmentDirectional(0.57, 0.94),
                      child: Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Other_20.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, -0.23),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: TextFormField(
                          onChanged: (_) => EasyDebounce.debounce(
                            'textController2',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          controller: textController2,
                          obscureText: !passwordVisibility,
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
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility
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
                      alignment: const AlignmentDirectional(0.78, 0.46),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupWidget(),
                            ),
                          );
                        },
                        text: 'Signup',
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

//functions
FFButtonOptions ffButtonOptions({
  double width,
  double height,
  Color color,
  TextStyle textStyle,
  BorderSide borderSide,
  double borderRadius,
}) {
  return FFButtonOptions(
    width: width,
    height: height,
    color: color,
    textStyle: textStyle,
    borderSide: borderSide,
    borderRadius: borderRadius,
  );
}

class FFButtonOptions {
  final double width;
  final double height;
  final Color color;
  final TextStyle textStyle;
  final BorderSide borderSide;
  final double borderRadius;

  const FFButtonOptions({
    this.width,
    this.height,
    this.color,
    this.textStyle,
    this.borderSide,
    this.borderRadius,
  });
  
  get elevation => null;

}

class FFButtonWidget extends StatelessWidget {
  final Function onPressed;
  final String text;
  final FFButtonOptions options;

  const FFButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.text,
    @required this.options, bool showLoadingIndicator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: options.width,
        height: options.height,
        decoration: BoxDecoration(
          color: options.color,
          border: options.borderRadius != null
              ? Border.all(
                  color: options.borderSide.color,
                  width: options.borderSide.width,
                )
              : null,
          borderRadius: BorderRadius.circular(options.borderRadius),
        ),
        child: Center(
          child: Text(
            text,
            style: options.textStyle,
          ),
        ),
      ),
    );
  }
}

class FlutterFlowTheme {
  static of(BuildContext context) {}
}


