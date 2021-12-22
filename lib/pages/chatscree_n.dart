import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:say_it/widgets/widgetclass.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  _chatscreenState createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {

  final _auth=FirebaseAuth.instance;
  late User LoogedUser;

void initstate()
{

  super.initState();
  getuser();


}



void getuser()async
{
  try{
    final user=await _auth.currentUser;
    if(user!=null)
      {
        LoogedUser=user;
      }
  }catch(e)
  {
    debugPrint('e');
  }

}


void logout()async{
  try{
    final user=await _auth.signOut();
    print("signout");
    Navigator.pop(context);
  }
  catch(e)
  {
    print(e);}
}


  @override
  Widget build(BuildContext context) {



    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;



    return Container(
      color: Colors.white,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          actions: [
            Row(
              children: [
                SizedBox(
                  width: width / 50,
                ),
                IconButton(
                    onPressed: () {
logout();

                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                Text(
                  "SAY IT",
                  style: GoogleFonts.roboto(
                      fontSize: size.width / 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
