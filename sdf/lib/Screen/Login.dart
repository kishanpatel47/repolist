import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:suvidhasarathi/navigation/route_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email;
  var password;
  var isSuccess;




  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 300,
                    fit: BoxFit.fitHeight,
                    image: AssetImage('images/Suvidha-Sarthi.png'),
                  ),
                  Container(
                    width: 350,
                    margin: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 25),
                    child: TextField(
                      controller: _email,
                      style: const TextStyle(color: Colors.red),
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.only(
                              end: 20,
                            ),
                            child: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(
                                Icons.email,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          hintText: 'Email',
                          hintStyle: const TextStyle(
                              fontSize: 15, color: Colors.black),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 25),
                    child: TextField(
                      controller: _password,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsetsDirectional.only(
                              end: 20,
                            ),
                            child: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(
                                Icons.password,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                              fontSize: 15, color: Colors.black),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                  ),
                  Text(
                    'ForgetPassword?',
                    style: TextStyle(height: 2.0),
                  ),
                  Container(
                      width: 200,
                      margin: const EdgeInsetsDirectional.only(top: 15),
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                      child: TextButton(
                          onPressed: () {
                          
                            // Navigator.pushNamed(context, RouteScreen.Dashboard);
                          },
                          child: const Text(
                            'Login',
                            style: const TextStyle(color: Colors.white),
                          ))),
                  Container(
                      child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteScreen.Registerscreen);
                    },
                    child: const Text.rich(
                      const TextSpan(
                          text: 'Not a register user ?',
                          style: TextStyle(
                              color: Colors.black, fontSize: 15, height: 4.0),
                          children: [TextSpan(text: ' RegisterNow')]),
                    ),
                  ))
                ],
              ),
            ),
          )),
    );
  }
}
