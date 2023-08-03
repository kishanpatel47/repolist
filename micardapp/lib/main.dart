import 'package:flutter/material.dart';

void main() {
  runApp(const Micardapp());
}

class Micardapp extends StatefulWidget {
  const Micardapp({Key? key}) : super(key: key);

  @override
  State<Micardapp> createState() => _MicardappState();
}

class _MicardappState extends State<Micardapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('mi card'),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.red,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              SizedBox(
                height: 10.0,
                width: 10.0,
              ),
              Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.orange,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
