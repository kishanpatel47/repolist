import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          shadowColor: Colors.red,
          titleSpacing: 5,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              size: 30.2,
            ),
          ),
          title: Text('Login here'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.grey,
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Flexible(
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(color: Colors.white),
                                contentPadding:
                                    EdgeInsets.fromLTRB(5, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Image(image: AssetImage('assetName')),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.grey,
                    ),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.password,
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Flexible(
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle: TextStyle(color: Colors.white),
                                contentPadding:
                                    EdgeInsets.fromLTRB(5, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
