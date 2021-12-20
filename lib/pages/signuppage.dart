import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:say_it/widgets/widgetclass.dart';
import 'package:say_it/main.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xffF6F9FE), Color(0xffF6F9FE)],
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Form(
              key: _formkey,
              child: ListView(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: width / 50,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'login-screen');
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                      Text(
                        "Sign up",
                        style: GoogleFonts.roboto(
                            fontSize: size.width / 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 35,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width / 20,
                      ),
                      Text(
                        "Sign up with one of the following options",
                        style: GoogleFonts.roboto(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Google_or_facebook_signup_button(
                        width: width,
                        geticon: FontAwesomeIcons.google,
                      ),
                      Google_or_facebook_signup_button(
                        width: width,
                        geticon: FontAwesomeIcons.facebook,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height / 35,
                  ),
                  Emailorpassword(
                    width: width,
                    size: size,
                    parameter_name: "Name",
                  ),
                  InputBox(
                    width: width,
                    inputtype: TextInputType.name,
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Emailorpassword(
                    width: width,
                    size: size,
                    parameter_name: "Email",
                  ),
                  InputBox(
                    width: width,
                    inputtype: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Emailorpassword(
                    width: width,
                    size: size,
                    parameter_name: "Password",
                  ),
                  InputBox(
                    width: width,
                    inputtype: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Emailorpassword(
                    width: width,
                    size: size,
                    parameter_name: "Confirm Password",
                  ),
                  InputBox(
                    width: width,
                    inputtype: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: height / 15,
                  ),
                  Loginorsignbutton(
                    width: width,
                    size: size,
                    Parameter: "Log in", onclicked: () { final invalid=_formkey.currentState!.validate();  },
                  ),
                  SizedBox(
                    height: height / 100,
                  ),
                  const loginorsigntextbutton(
                    goto: "Log in",
                    infoabtaccount: "Already have an account ?",
                    path: 'login-screen',
                  )
                ],
              ),
            ),
          )),
    );
  }
}

