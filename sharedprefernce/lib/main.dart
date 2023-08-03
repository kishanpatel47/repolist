import 'package:flutter/material.dart';
import 'package:sharedprefernce/navigation/Route.dart';
import 'package:sharedprefernce/navigation/Route_screen.dart';

void main() {
  runApp(AndroidManifestfile());
}

class AndroidManifestfile extends StatefulWidget {
  const AndroidManifestfile({Key? key}) : super(key: key);

  @override
  State<AndroidManifestfile> createState() => _AndroidManifestfileState();
}

class _AndroidManifestfileState extends State<AndroidManifestfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SharedPrefernce',
      color: Colors.blue,
      initialRoute: Routescreen.LOGIN,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
