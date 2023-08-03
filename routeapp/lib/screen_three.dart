import 'package:flutter/material.dart';
import 'package:routeapp/screen_two.dart';

class ScreenThree extends StatefulWidget {
  static const String id = "ScreenThree";
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Screen3',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.lightGreen),
                child: Center(
                  child: Text('screen3'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
