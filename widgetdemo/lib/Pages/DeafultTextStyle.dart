import 'package:flutter/material.dart';
import 'package:widgetdemo/units/Route_screen.dart';

class DeafultTextStyle extends StatefulWidget {
  const DeafultTextStyle({Key? key}) : super(key: key);

  @override
  State<DeafultTextStyle> createState() => _DeafultTextStyleState();
}

class _DeafultTextStyleState extends State<DeafultTextStyle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('DefaultTextStyle')),
        body: SafeArea(
          child: Column(
            children: [
              DefaultTextStyle(
                  style: TextStyle(color: Colors.lightBlue),
                  child: Column(
                    children: [
                      Text(
                        'first',
                        style: TextStyle(color: Colors.brown),
                      ),
                      Text('first'),
                      Text('first'),
                      Text('first'),
                      Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              color: Colors.lightBlue.shade100),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  (context), Routescreen.TextWidget);
                            },
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.all(20)),
                            child: Text('Next'),
                          ))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
