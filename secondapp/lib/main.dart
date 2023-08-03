import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Container(
        child: Image(
          image: AssetImage('images/appstore.png'),
        ),
      ),
      appBar: AppBar(
        title: Center(
          child: Text('Second App'),
        ),
      ),
    ),
  ));
}
