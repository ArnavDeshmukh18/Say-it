import 'package:firebase_auth/firebase_auth.dart';
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

  final _auth=FirebaseAuth.instance;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController namecontroller=TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override

  String? _email;
  String? _name;
  String? _password;
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
                  parameter_name: "Name",
                ),











                Container(
                  width: width / 1.10,
                  height: width / 10,
                  color: const Color(0xffEBF2FA),
                  margin:
                  EdgeInsets.only(top: width / 35, left: width / 25, right: width / 25),
                  child: TextFormField(
                    keyboardType:TextInputType.name,
                    cursorColor: Colors.black54,
    controller: namecontroller,

    onSaved: (value){
                      _name=value;
    emailController.value.copyWith(text: _name);},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width / 30),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width / 30),
                        borderSide: const BorderSide(color: Colors.black38),
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
                  parameter_name: "Email",
                ),
                Container(
                  width: width / 1.10,
                  height: width / 10,
                  color: const Color(0xffEBF2FA),
                  margin:
                  EdgeInsets.only(top: width / 35, left: width / 25, right: width / 25),
                  child: TextFormField(
                    keyboardType:TextInputType.emailAddress ,
                    cursorColor: Colors.black54,
    controller: emailController,

    onSaved: (value){
                      _email=value;
    emailController.value.copyWith(text: _email);},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width / 30),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width / 30),
                        borderSide: const BorderSide(color: Colors.black38),
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
                  margin:
                  EdgeInsets.only(top: width / 35, left: width / 25, right: width / 25),
                  child: TextFormField(
                    keyboardType:TextInputType.visiblePassword ,
                    cursorColor: Colors.black54,
    controller: passwordController,

    onSaved: (value){
                      _password=value;
    emailController.value.copyWith(text: _password);},
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width / 30),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width / 30),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                    ),
                  ),
                ),











                SizedBox(
                  height: height / 50,
                ),
















                SizedBox(
                  height: height / 15,
                ),



                Container(
                  margin: EdgeInsets.only(left: width / 25, right: width / 25),
                  child:ElevatedButton(
                    onPressed:()async{

                       UserCredential newuser=await _auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);

                          print(_email);
                          print(_password);
                          Navigator.pushNamed(context,'chatscreen');



                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width / 2.95,
                          right: width / 2.95,
                          top: width / 30,
                          bottom: width / 30),
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.roboto(
                            fontSize: size.width / 20, fontWeight: FontWeight.bold),
                      ),
                    ),


                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff395266),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width / 10))),),

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
          )),
    );
  }
}

