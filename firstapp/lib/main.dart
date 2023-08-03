import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  Widget  getTextField(){
    return Text("Search");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('this  is   first App')),
          backgroundColor: Colors.amberAccent,
        ),
        body: 
        Column(
          children: [
            getTextField(),
            Center(
          child: RawMaterialButton(
            child: Text(
              'ADD',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => {},
            fillColor: Colors.blue,
            constraints: BoxConstraints.tightFor(height: 50.00,width: 50.00),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
          ),
        )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.add),
          onPressed: () => {
            setState((() => {num++}))
          },
        ),
      ),
    );
  }
}
