import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/Screen/Login.dart';
import 'package:suvidha_sarathi/Screen/Suvidhasarathi_Home.dart';
import 'package:suvidha_sarathi/Unitls/geticon.dart';

void main() {
  runApp(const RunMyApp());
}

class RunMyApp extends StatelessWidget {
  const RunMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Suvidhasarathi_Home(index: 0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Center(
          child: Image(
            height: double.infinity,
            fit: BoxFit.fill,
            width: double.infinity,
            image: AssetImage(getIcons.splashscreen),
          ),
        ),
      ),
    );
  }
}
