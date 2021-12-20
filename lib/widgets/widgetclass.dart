import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:say_it/main.dart';

class Loginorsignbutton extends StatelessWidget {
  const Loginorsignbutton({
    Key? key,
    required this.width,
    required this.size,
    required this.Parameter, required this.onclicked,
  }) : super(key: key);

  final double width;
  final Size size;
  final String Parameter;
  final VoidCallback onclicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: width / 25, right: width / 25),
      child: ElevatedButton(
        onPressed: onclicked,
        child: Padding(
          padding: EdgeInsets.only(
              left: width / 2.95,
              right: width / 2.95,
              top: width / 30,
              bottom: width / 30),
          child: Text(
            Parameter,
            style: GoogleFonts.roboto(
                fontSize: size.width / 20, fontWeight: FontWeight.bold),
          ),
        ),
        style: ElevatedButton.styleFrom(
            primary: const Color(0xff395266),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width / 10))),
      ),
    );
  }
}

class InputBox extends StatelessWidget {
  InputBox({Key? key, required this.width, required this.inputtype})
      : super(key: key);

  final double width;
  final TextInputType inputtype;
var parameter;





  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 1.10,
      height: width / 10,
      color: const Color(0xffEBF2FA),
      margin:
          EdgeInsets.only(top: width / 35, left: width / 25, right: width / 25),
      child: TextFormField(
        keyboardType: inputtype,
        cursorColor: Colors.black54,
        validator: (var _parameter)
        {


        },
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
    );
  }
}

class Emailorpassword extends StatelessWidget {
  const Emailorpassword({
    Key? key,
    required this.width,
    required this.size,
    required this.parameter_name,
  }) : super(key: key);

  final double width;
  final Size size;
  final String parameter_name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: width / 20,
        ),
        Text(
          parameter_name,
          style: GoogleFonts.roboto(
            color: Colors.black54,
            fontSize: size.width / 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class loginorsigntextbutton extends StatelessWidget {
  const loginorsigntextbutton({
    Key? key,
    required this.goto,
    required this.infoabtaccount,
    required this.path,
  }) : super(key: key);
  final String goto;
  final String infoabtaccount;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          infoabtaccount,
          style: GoogleFonts.roboto(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, path);
          },
          child: Text(
            goto,
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

class Google_or_facebook_signup_button extends StatelessWidget {
  const Google_or_facebook_signup_button({
    Key? key,
    required this.width,
    required this.geticon,
  }) : super(key: key);

  final double width;
  final IconData geticon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Card(
          child: IconButton(onPressed: () {}, icon: Icon(geticon)),
          color: const Color(0xffEBF2FA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width / 30),
          )),
      margin: EdgeInsets.all(width / 23),
    ));
  }
}


class inputform extends StatefulWidget {
   inputform({Key? key, required this.width, required this.inputtype, required this.Parameter}) : super(key: key);
  final double width;
  final TextInputType inputtype;
  var parameter;
late final String Parameter;

  @override
  _inputformState createState() => _inputformState();
}

class _inputformState extends State<inputform> {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width / 1.10,
      height: widget.width / 10,
      color: const Color(0xffEBF2FA),
      margin:
      EdgeInsets.only(top:widget.width / 35, left: widget.width / 25, right: widget.width / 25),
      child: TextFormField(
        keyboardType: widget.inputtype,
        cursorColor: Colors.black54,
        validator: (var _parameter)
        {
           if(_parameter!.isNotEmpty)
             {

               return null;
             }
           else{
             return 'Invalid Input';
           }

        },
        onSaved: (value) => setState(() =>  widget.Parameter= value!),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.width / 30),
            borderSide: const BorderSide(color: Colors.black38),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.width / 30),
            borderSide: const BorderSide(color: Colors.black38),
          ),
        ),
      ),
    );;
  }
}
