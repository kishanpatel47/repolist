import 'package:flutter/material.dart';
import 'package:routeapp/screen_three.dart';

class Screentwo extends StatefulWidget {
  dynamic data;
  // static const String id = "Screentwo";
  Screentwo({Key? key, required this.data}) : super(key: key);

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    dynamic data;
    // final arguments = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.data['name']),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ScreenThree()));
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.lightGreen),
                child: Center(
                  child: Text('screen2'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
