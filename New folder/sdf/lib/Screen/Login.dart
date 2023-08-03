import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suvidha_sarathi/CustomDrawer/Drawer.dart';
import 'package:suvidha_sarathi/Unitls/Appcolor.dart';
import 'package:suvidha_sarathi/Unitls/CustomAlert.dart';
import 'package:suvidha_sarathi/Unitls/geticon.dart';
import 'package:suvidha_sarathi/Navigationscreen//route_screen.dart';
import 'package:suvidha_sarathi/Unitls/api_url.dart';
import 'package:suvidha_sarathi/model/login_model.dart';
import 'dart:developer' as logdav;
import '../Unitls/https-untils.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email;
  var password;
  var isSuccess;
  var ProfileID;
  var RoleID;
  var RoleName;
  var isVisible = false;
  bool _passwordVisible = false;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  RegExp regExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  @override
  Widget build(BuildContext context) {
    Future<dynamic> logincalling() async {
      if (_email.text.isEmpty) {
        showDialog(
            context: context,
            builder: (BuildContext c) => CustomAlertDialog(
                onpress: () {
                  Navigator.of(context).pop();
                },
                title: 'Alert',
                description: 'please enter the  email ',
                event_text: 'ok')
//                 AlertDialog(
//               content: Container(
//
//                 height: MediaQuery.of(context).size.height*0.09,
//                 width: double.maxFinite,
//                 alignment: Alignment.centerLeft,
//           padding: EdgeInsets.only(bottom: 5),
//
//                 child: Column(
//
//                   children: [
//                     Container(
// margin: EdgeInsets.fromLTRB(1, 0, 0, 10),
//                       child:      Text('please enter the  email',style: TextStyle(
//                         fontSize: 20
//                       ),) ,
//                     )
//
//                   ],
//                 ),
//               ),
// contentPadding: EdgeInsets.only(left: 25,top: 13),
//             title: Text('Alert'),
//
//               actions: [
//               TextButton(onPressed: (){
//
// Navigator.of(context).pop();
//
//               }, child: Text('ok',style: TextStyle(fontSize: 18,color: Colors.black),) )
//
//               ],
//             )
            );
      } else if (_password.text.isEmpty) {
        showDialog(
            context: context,
            builder: (BuildContext c) => CustomAlertDialog(
                onpress: () {
                  Navigator.of(context).pop();
                },
                title: 'Alert',
                description: 'please enter the  password ',
                event_text: 'ok'));
      } else {
        var EncryptUserEmail =
            EcncyptService().encryptMyData(_email.text.toString());

        var EncryptUserPassword =
            EcncyptService().encryptMyData(_password.text.toString());
        //
        // print("Email $EncryptUserEmail");
        // print("password $EncryptUserPassword");
        //
        var data = {
          'LanguageID': "1",
          'Pass': EncryptUserPassword,
          "Email": EncryptUserEmail,
          "APIKey": "123",
          "AndroidKey": "",
          "IOSKey": ""
        };
        await post(Uri.parse("${AppUrl.liveBaseURl}/Login"), body: data)
            .then((response) async {
          print("your resonse :: ${response.body.toString()}");

          LoginModel loginModel =
              LoginModel.fromJson(jsonDecode(response.body)); //Map
          if (loginModel.returnCode == "1") {
            logdav.log('kishan');
            final SharedPreferences sharedPreferences =
                await SharedPreferences.getInstance();
            sharedPreferences.setString("userEmail", EncryptUserEmail);
            sharedPreferences.setString("userPassword", EncryptUserPassword);

            RoleID = loginModel.data!.roleID.toString();
            sharedPreferences.getInt(RoleID);
            logdav.log(RoleID, name: "RoleID");
            ProfileID = loginModel.data!.profileID.toString();
            sharedPreferences.getInt(ProfileID);
            logdav.log(ProfileID, name: "ProfileID");
            RoleName = loginModel.data!.roleName.toString();
            sharedPreferences.getString(RoleName);
            logdav.log(RoleName, name: "Rolename");

            Timer(Duration(seconds: 5), () {
              if (RoleID != 0 && RoleName == '' && ProfileID != 0) {
                setState(() {
                  email = "";
                  password = "";
                });
                Navigator.pushNamed(context, RouteScreen.WhySuvidhasarathi);
              } else {
                showDialog(
                    context: context,
                    builder: (BuildContext c) => CustomAlertDialog(
                        onpress: () {
                          Navigator.of(context).pop();
                        },
                        title: 'Alert',
                        description: 'Contact Administrator ',
                        event_text: 'ok'));
              }
              // logdav.log(RoleID);
            });
          } else if (loginModel.returnCode == "5") {
            showDialog(
                context: context,
                builder: (BuildContext c) => CustomAlertDialog(
                    onpress: () {
                      Navigator.of(context).pop();
                    },
                    title: 'Alert',
                    description: 'Contact Administrator ',
                    event_text: 'ok'));
          }
        });
      }

      // print(data);
    }

    return Scaffold(
        endDrawerEnableOpenDragGesture: false,
        drawer: CustomNavigationbar(index: 80),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Appcolor.BLUE,
          title: const Text('Login'),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 300,
                  fit: BoxFit.fitHeight,
                  image: AssetImage(getIcons.suvidha_sarathi),
                ),
                Container(
                  width: 350,
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                  child: TextField(
                    controller: _email,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsetsDirectional.only(
                            end: 20,
                          ),
                          child: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Image(
                                  height: 25,
                                  width: 25,
                                  image: AssetImage(getIcons.emaillock))),
                        ),
                        hintText: 'Email',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.black),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
                Container(
                  width: 350,
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                  child: TextField(
                    controller: _password,
                    obscureText: !_passwordVisible,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsetsDirectional.only(
                            end: 20,
                          ),
                          child: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Image(
                                height: 25,
                                width: 25,
                                image: AssetImage(getIcons.password),
                              )),
                        ),
                        suffixIcon: IconButton(
                          icon: Image(
                            height: 30,
                            width: 30,
                            image: AssetImage(_passwordVisible
                                ? getIcons.Eyeon
                                : getIcons.Eyeoff),
                          ),
                          color: Colors.black,
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        hintText: 'Password',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.black),
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
                    margin: EdgeInsetsDirectional.only(top: 15),
                    decoration: BoxDecoration(
                        color: Appcolor.BLUE,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: TextButton(
                        onPressed: () {
                          // );
                          logincalling();
                          // Navigator.pushNamed(context, RouteScreen.Dashboard);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ))),
                TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => RouteScreen.Login()),
                    // );
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(RouteScreen.Registerscreen);
                  },
                  child: const Text.rich(
                    TextSpan(
                        text: 'Not a register user ?',
                        style: TextStyle(
                            color: Colors.black, fontSize: 15, height: 4.0),
                        children: [TextSpan(text: ' RegisterNow')]),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
