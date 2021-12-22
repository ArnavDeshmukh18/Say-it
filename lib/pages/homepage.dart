import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:say_it/widgets/widgetclass.dart';

import 'package:say_it/pages/chatscree_n.dart';
import 'package:say_it/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _auth = FirebaseAuth.instance;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  String? _email;
  String? _name;
  String? _password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;


    bool isPasswordValid(String password) => password.length == 9;

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
                      Expanded(
                          child: Container(
                        child: Card(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.google)),
                            color: const Color(0xffEBF2FA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(width / 30),
                            )),
                        margin: EdgeInsets.all(width / 23),
                      )),
                      Expanded(
                          child: Container(
                        child: Card(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.facebook)),
                            color: const Color(0xffEBF2FA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(width / 30),
                            )),
                        margin: EdgeInsets.all(width / 23),
                      )),
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
                  Container(
                    width: width / 1.10,
                    height: width / 10,
                    color: const Color(0xffEBF2FA),
                    margin: EdgeInsets.only(
                        top: width / 35, left: width / 25, right: width / 25),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black54,
                      textAlign: TextAlign.center,
                      controller: emailController,

                      validator: (value)
                      {
                        if(value!.isEmpty)
                          {
                            return 'Enter Email';
                          }
                        else{
                          return null;
                        }
                      },
                      onSaved: (value) {
                        emailController.value.copyWith(text: _email);
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width / 30),
                          borderSide: const BorderSide(color: Color(0xff395266)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width / 30),
                          borderSide: const BorderSide(color:  Color(0xff395266)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  Emailorpassword(
                    width: width,
                    size: size,
                    parameter_name: "Password",
                  ),
                  Container(
                    width: width / 1.10,
                    height: width / 10,
                    color: const Color(0xffEBF2FA),
                    margin: EdgeInsets.only(
                        top: width / 35, left: width / 25, right: width / 25),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Enter Password';
                        }
                        else{
                          return null;
                        }
                      },
                      controller: passwordController,
                      cursorColor: Colors.black54,
                      onSaved: (value) {
                        passwordController.value.copyWith(text: _password);
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width / 30),
                          borderSide: const BorderSide(color:  Color(0xff395266)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width / 30),
                          borderSide: const BorderSide(color:  Color(0xff395266)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 15,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: width / 25, right: width / 25),
                    child: ElevatedButton(
                      onPressed: () async {
                        if(_formkey.currentState!.validate() ){
                          try {
                            final newuser =
                            await _auth.signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);

                            if (newuser != null) {
                              print(_email);
                              print(_password);
                              print('Login');
                              Navigator.pushNamed(context, 'chatscreen');
                            }
                          } catch (e) {
                            debugPrint('e');
                          }
                        }

                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width / 2.95,
                            right: width / 2.95,
                            top: width / 30,
                            bottom: width / 30),
                        child: Text(
                          "Log in",
                          style: GoogleFonts.roboto(
                              fontSize: size.width / 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff395266),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(width / 10))),
                    ),
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
