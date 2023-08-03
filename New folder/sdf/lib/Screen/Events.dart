import 'package:flutter/material.dart';
import 'package:suvidha_sarathi/CustomDrawer/Drawer.dart';
import 'package:suvidha_sarathi/Unitls/api_url.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Events extends StatefulWidget {
  final int index;
  const Events({Key? key, required this.index}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomNavigationbar(
        index: widget.index,
      ),
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: Center(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: '${AppUrl.web}/EventHome',
        ),
      ),
    );
  }
}
