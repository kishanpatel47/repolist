import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Center(
            child: Text(' I am Poor App'),
          ),
          
        ),
        body:Center(
          child: Image(image: AssetImage('images/playstore.png')),
        ) ,
        ),
  ));
}
