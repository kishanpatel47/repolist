import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('LoginApp'),
        ),
      ),
      body: LoginApp(),
    ),
  ));
}

class LoginApp extends StatefulWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFuh-vJZG_8MtdpI0-NLNlIS35XQeD-vddRTURMpS74jEbR2ocaebimRFSqbkDjB1i7eI&usqp=CAU'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Welcome back',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          color: Colors.red,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(Icons.person),
              SizedBox(
                width: 10,
              ),
              Text('Enter the Email')
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.red,
          margin: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(Icons.password),
              SizedBox(
                width: 10,
              ),
              Text('Enter the Password ')
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.fromLTRB(0, 0, 22, 0),
            child: Text(
              'forgetPassword ?',
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: RaisedButton(
            onPressed: () {},
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text("Click This"),
          ),
        )
      ],
    );
  }
}
