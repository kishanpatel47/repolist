import 'package:flutter/material.dart';

void main() {
  runApp(const fourApp());
}

class fourApp extends StatefulWidget {
  const fourApp({Key? key}) : super(key: key);

  @override
  State<fourApp> createState() => _fourAppState();
}

class _fourAppState extends State<fourApp> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Four  App'),
          ),
        ),
        body: Center(
          child: Text('your number is  increment :$num '),
        ),
        backgroundColor: Colors.red,
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            setState(() {
              num++;
            })
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
