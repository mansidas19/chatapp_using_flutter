import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_app/screens/mychat.dart';
import 'package:firebase_app/screens/home.dart';
import 'package:firebase_app/screens/login.dart';
//import 'package:firebase_app/screens/myimage_cam.dart';
import 'package:firebase_app/screens/reg.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "home": (context) => MyHome(),
        "reg": (context) => MyReg(),
        "login": (context) => MyLogin(),
        "chat": (context) => MyChat(),
        //"myimage": (context) => MyImage(),
      },
    ),
  );
}
