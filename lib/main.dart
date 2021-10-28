import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:reating/dilog.dart';
import 'package:reating/fullpage.dart';
import 'package:reating/maintap.dart';
import 'package:reating/profil.dart';
import 'package:reating/stegard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/fullpage",
      routes: {
        "/Profile": (context) => Profile(),
        // "/Profile" :(context) =>SampleContainer(),
        "/maintap": (context) => maintap(),
        "/dilog": (context) => dilog(),
        "/fullpage": (context) => fullpage(),
        "/stegard": (context) => stegard(),
      },

      /*   
      */
    );
  }
}
