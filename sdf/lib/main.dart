import 'package:flutter/material.dart';
import 'package:suvidhasarathi/navigation/Routes.dart';
import 'package:suvidhasarathi/navigation/route_screen.dart';

import 'package:suvidhasarathi/helpers/register_web_webview_stub.dart'
    if (dart.library.html) 'package:svuidhasarathi/helpers/register_web_webview.dart';

void main() {
  registerWebViewWebImpementation();
  runApp(AndroidManifest());
}

class AndroidManifest extends StatefulWidget {
  const AndroidManifest({Key? key}) : super(key: key);

  @override
  State<AndroidManifest> createState() => _AndroidManifestState();
}

class _AndroidManifestState extends State<AndroidManifest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteScreen.Splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
