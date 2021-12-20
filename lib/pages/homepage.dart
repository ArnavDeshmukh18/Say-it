import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:say_it/widgets/widgetclass.dart';
import 'package:say_it/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    String _name = '';
    String _email = '';
    String _password = '';
    final _formkey = GlobalKey<FormState>();

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
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios)),
                      Text(
                        "Log in",
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
                        "Log in with one of the following options",
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
                    parameter_name: "Email",
                  ),
                  inputform(
                      width: width,
                      inputtype: TextInputType.name,
                      Parameter: _email),
                  SizedBox(
                    height: height / 50,
                  ),
                  Emailorpassword(
                    width: width,
                    size: size,
                    parameter_name: "Password",
                  ),
                  inputform(
                    width: width,
                    inputtype: TextInputType.visiblePassword,
                    Parameter: _password,
                  ),
                  SizedBox(
                    height: height / 15,
                  ),
                  Loginorsignbutton(
                    width: width,
                    size: size,
                    Parameter: "Log in",
                    onclicked: () {
                      final invalid = _formkey.currentState!.validate();
                    },
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  const loginorsigntextbutton(
                    goto: "Sign up",
                    infoabtaccount: "Don't have an account ?",
                    path: 'signup-screen',
                  )
                ],
              ),
            ),
          )),
    );
  }
}
