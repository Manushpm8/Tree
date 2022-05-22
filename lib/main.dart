import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tree/screens/login_page.dart';
import 'package:tree/screens/splash_screen.dart';
import 'package:tree/screens/uni_dashboard.dart';
import 'screens/resource_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const LoginPage(),
      initialRoute: SplashPage.id,
      routes: {
        LoginPage.id: ((context) => LoginPage()),
        SplashPage.id: ((context) => SplashPage()),
        UniDashBoard.id: ((context) => UniDashBoard()),
        ResourcePage.id: ((context) => ResourcePage()),
      },
    );
  }
}
