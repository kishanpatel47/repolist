import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart' as web;
import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/CustomDrawer/Drawerlist.dart';
import 'package:suvidha_sarathi/Navigationscreen/route_screen.dart';
import 'package:suvidha_sarathi/Unitls/Appcolor.dart';
import 'package:suvidha_sarathi/Unitls/geticon.dart';

import '../model/Drawermodel.dart';

class CustomNavigationbar extends StatefulWidget {
  final index;
  const CustomNavigationbar({Key? key, required this.index}) : super(key: key);

  @override
  State<CustomNavigationbar> createState() => _CustomNavigationbarState();
}

class _CustomNavigationbarState extends State<CustomNavigationbar> {
  late int selectedIndex = 0;
  late String appName;
  late String packageName;
  late String version;
  late String buildNumber;
  var ProfileID;
  var RoleID;
  var RoleName;
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.index;
    _color = false;
  }

  late bool _color;
  handleColor(Drawermodel item) {
    // Navigator.pushNamed(context, item.screenname);
    // setSelected(row.id);
    selectedIndex = item.id;
    setState(() {
      selectedIndex = widget.index; //item.id;
    });
    print("your  button $selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    var buildNumber, version;

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return /*web.kIsWeb
        ? SizedBox(
            width: 350,
            child: Drawer(
                child: Column(children: [
              drawerHeader(),
              drawerlist(),
            ])),
          )
        : web.kIsWeb
            ? SizedBox(
                width: 650,
                child: Drawer(
                    child: ListView(padding: EdgeInsets.zero, children: [
                  drawerHeader(),
                  drawerlist(),
                ])),
              )
            : web.kIsWeb
                ? SizedBox(
                    width: 800,
                    child: Drawer(
                        child: ListView(
                            padding: EdgeInsets.zero,
                            children: [drawerHeader()])))
                : web.kIsWeb
                    ? SizedBox(
                        width: 900,
                        child: Drawer(
                            child:
                                ListView(padding: EdgeInsets.zero, children: [
                          drawerHeader(),
                          drawerlist(),
                        ])))
                    : web.kIsWeb
                        ? SizedBox(
                            width: 1050,
                            child: Drawer(
                                child: ListView(
                                    padding: EdgeInsets.zero,
                                    children: [
                                  drawerHeader(),
                                  drawerlist(),
                                ])))
                        : web.kIsWeb
                            ? SizedBox(
                                width: 1280,
                                child: Drawer(
                                    child: ListView(
                                        padding: EdgeInsets.zero,
                                        children: [
                                      drawerHeader(),
                                      drawerlist(),
                                    ])))
                            : Platform.isAndroid
                                ? SizedBox(
                                    width: width * 0.7,
                                    child: Drawer(
                                        child: ListView(
                                            padding: EdgeInsets.zero,
                                            children: [
                                          drawerHeader(),z
                                          drawerlist(),
                                        ])))
                                : Container();*/
        Container(
      child: Drawer(
          child: Column(children: [
        drawerHeader(),
        Expanded(flex: 9, child: drawerlist()),
        Expanded(
          flex: 0,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        print('facebook');
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 8, 5),
                        child: Image(
                          height: 25,
                          width: 25,
                          image: AssetImage(getIcons.facebook),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('instagram');
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 8, 5),
                        child: Image(
                          height: 25,
                          width: 25,
                          image: AssetImage(getIcons.instagram),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('twitter');
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 2, 5),
                        child: Image(
                          height: 25,
                          width: 25,
                          image: AssetImage(getIcons.twitter),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text.rich(TextSpan(
                      text: 'App version ',
                      style: TextStyle(fontSize: 14),
                      children: [TextSpan(text: version)])),
                )
              ],
            ),
          ),
        )
      ])),
    );
  }

  Widget drawerHeader() {
    return Center(
      child: Container(
        width: double.infinity,
        child: DrawerHeader(
          padding: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(color: Appcolor.BLUE),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                      color: Appcolor.WHITE, shape: BoxShape.circle),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      fit: BoxFit.contain,
                      getIcons.suvidha_sarathi,
                      width: 100,
                    ),
                  ),
                ),
              ),

              // Text('flutter.com',
              //   style: TextStyle(
              //     color:  Colors.white
              //   ),
              // ),
              // SizedBox(height: 4,),

              InkWell(
                onTap: () => {
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed(RouteScreen.Login)
                },
                child: Container(
                  padding: web.kIsWeb
                      ? EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.0013)
                      : EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 0.011),
                  margin: EdgeInsets.fromLTRB(2, 12, 0, 20),
                  child: Text(
                    'Login | Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerlist() {
    var widthmedia = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(2),
        child: Column(
          children: model.map((item) {
            return InkWell(
              onTap: () {
                Navigator.push(context, item.screenname);
              },
              child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: selectedIndex == item.id
                          ? Appcolor.BLUE
                          : Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15))),

                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  child: item.id == 0 ||
                          item.id == 1 ||
                          item.id == 2 ||
                          item.id == 5 ||
                          item.id == 6 ||
                          item.id == 7 ||
                          item.id == 8 ||
                          item.id == 9 ||
                          item.id == 10 ||
                          item.id == 11 ||
                          item.id == 3 && RoleID == "1" ||
                          item.id == 4 && RoleID == "1"
                      ? ListTileTheme(
                          child: ListTile(
                              selectedColor: Colors.black26,
                              hoverColor: Colors.black38,
                              tileColor: selectedIndex == item.id
                                  ? Appcolor.BLUE
                                  : null,
                              onTap: () {
                                Navigator.of(context, rootNavigator: true)
                                    .pushReplacementNamed(item.screenname,
                                        arguments: selectedIndex);

                                setState(() {
                                  handleColor(item);
                                });
                              },
                              leading: Image.asset(
                                item.icon,
                                width: 25,
                                height: 25,
                                color: item.id == selectedIndex
                                    ? Appcolor.WHITE
                                    : Colors.black,
                              ),
                              title: Text(
                                item.name,
                                style: TextStyle(
                                  color: item.id == selectedIndex
                                      ? Appcolor.WHITE
                                      : Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              )),
                        )
                      : null),
            );

            // return
          }).toList(),
        ),
      ),
    );
  }
}
