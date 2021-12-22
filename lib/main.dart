import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:say_it/pages/homepage.dart';
import 'package:say_it/pages/signuppage.dart';
import 'package:say_it/pages/signuppage.dart';
import 'package:say_it/widgets/widgetclass.dart';
import 'package:say_it/pages/chatscree_n.dart';



void main()async
{

  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp( MyApp());

}


class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(


      ),
      home:  Homepage(),

      routes: {
        'login-screen':(context)=>Homepage(),
        'signup-screen':(context)=>Signup(),
        'chatscreen':(context)=>chatscreen(),

      },

    );
  }
}
