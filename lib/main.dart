import 'package:flutter/material.dart';
import 'package:say_it/pages/homepage.dart';
import 'package:say_it/pages/signuppage.dart';
import 'package:say_it/pages/signuppage.dart';
import 'package:say_it/widgets/widgetclass.dart';
void main()
{
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String username='';
  String email='';
  String password='';
 final  _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(


      ),
      home: const Homepage() ,

      routes: {
        'login-screen':(context)=>Homepage(),
        'signup-screen':(context)=>Signup(),
      },

    );
  }
}
