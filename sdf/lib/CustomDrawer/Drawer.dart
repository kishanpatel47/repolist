import 'package:flutter/material.dart';
import 'package:suvidhasarathi/Screen/Login.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.62,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.19,
                  width: width / 1.2,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('images/Suvidha-Sarthi.png'),
                                scale: 10)),

                        // child: Image(
                        //
                        //   height: 100,
                        //   width: 100,
                        //   image: AssetImage('images/back.png'),
                        // ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                          // Navigator.pushNamed(context, RouteScreen.Login);
                        },
                        child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                            child: Text(
                              'Login | Register',
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
