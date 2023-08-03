import 'package:flutter/material.dart';
import 'package:routeapp/screen_two.dart';
import 'package:routeapp/untils/route_screens.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Subscribe',
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
              onPressed: () {
                Navigator.pushNamed(context, RouteScreen.Screentwo,
                    arguments: {'name': 'Ram', 'lastname': 'Patel'});
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Screentwo()));
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(color: Colors.lightGreen),
                child: Center(
                  child: Text('screen1'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
