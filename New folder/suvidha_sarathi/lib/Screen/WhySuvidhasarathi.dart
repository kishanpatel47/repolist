// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:http/http.dart';
// import 'package:suvidha_sarathi/CustomDrawer/Drawer.dart';
// import 'package:suvidha_sarathi/Unitls/api_url.dart';
// import 'package:suvidha_sarathi/Unitls/custom_progress_dialog.dart';
// import 'dart:developer' as logdav;
//
// import 'package:suvidha_sarathi/model/whysuvidhasarthi_model.dart';
// //import 'package:webview_flutter/webview_flutter.dart';
//
// import '../model/login_model.dart';
//
// class WhySuvidhasarathi extends StatefulWidget {
//   const WhySuvidhasarathi({Key? key}) : super(key: key);
//
//   @override
//   State<WhySuvidhasarathi> createState() => _WhySuvidhasarathiState();
// }
//
// class _WhySuvidhasarathiState extends State<WhySuvidhasarathi> {
//   String? target = "";
//
//   final GlobalKey webViewKey = GlobalKey();
//   InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
//       crossPlatform: InAppWebViewOptions(
//         useShouldOverrideUrlLoading: true,
//         mediaPlaybackRequiresUserGesture: false,
//       ),
//       android: AndroidInAppWebViewOptions(
//         useHybridComposition: true,
//       ),
//       ios: IOSInAppWebViewOptions(
//         allowsInlineMediaPlayback: true,
//       ));
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     suvidha();
//   }
//
//   Future<void> suvidha() async {
//     var data = {'LanguageID': "1", 'ApiKey': "123"};
//     post(Uri.parse("${AppUrl.liveBaseURl}/GetAllStaticData"), body: data)
//         .then((res) {
//       logdav.log(res.body.toString(), name: 'response');
//       jsonDecode(res.body)["Data"]["Question"][0]["Question"];
//       WhySuvidhaSarathiModel whySuvidhasarathiModel =
//           WhySuvidhaSarathiModel.fromJson(jsonDecode(res.body));
//       List<Question> listQuestions = whySuvidhasarathiModel.data!.question!;
//       for (int i = 0; i < listQuestions.length; i++) {
//         print(listQuestions[i].question);
//         print(listQuestions[i].answer);
//       }
//       List<Link> listLinks = whySuvidhasarathiModel.data!.link!;
//       for (int i = 0; i < listLinks.length; i++) {
//         print(listLinks[i].name);
//         print(listLinks[i].text);
//         if (listLinks[i].name == "AboutUs") {
//           // widget._controller!
//           //     .loadUrl(urlRequest: URLRequest(url: Uri.parse("www.yahoo.com")));
//           setState(() {
//             target = listLinks[i].text;
//           });
//           // logdav.log(target);
//         }
//       }
//       /*jsonDecode(res.body);
//       whysuvidhasarathi_model modelclass =
//           whysuvidhasarathi_model.fromJson(jsonDecode(res.body));
//       var link = modelclass.data!.link!.forEach((element) {
//         logdav.log(element.text.toString(), name: "text");
//         logdav.log(element.name.toString(), name: "name");
//         if (element.name == "AboutUs") {
//           setState(() {
//             target = element.text.toString();
//           });
//           // logdav.log(target);
//         }
//       });*/
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         drawer: CustomNavigationbar(),
//         appBar: AppBar(
//           title: Text('Why Suvidha sarthi'),
//         ),
//         body: target!.isNotEmpty
//             ? InAppWebView(
//
//                 key: webViewKey,
//                 initialOptions: options,
//                 initialUrlRequest: URLRequest(url: Uri.parse(target!)),
//               )
//             : CustomProgressDialog().loadingSpinner(context, 3),
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:http/http.dart';
import 'package:suvidha_sarathi/CustomDrawer/Drawer.dart';
import 'package:suvidha_sarathi/Unitls/api_url.dart';
import 'package:suvidha_sarathi/Unitls/custom_progress_dialog.dart';
import 'dart:developer' as logdav;

import 'package:suvidha_sarathi/model/whysuvidhasarthi_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:webview_flutter/webview_flutter.dart';

import '../model/login_model.dart';

class WhySuvidhasarathi extends StatefulWidget {
  final int index;
  const WhySuvidhasarathi({Key? key, required this.index}) : super(key: key);

  @override
  State<WhySuvidhasarathi> createState() => _WhySuvidhasarathiState();
}

class _WhySuvidhasarathiState extends State<WhySuvidhasarathi> {
  String? target = "";
  double progress = 0;
  var RoleID;
  bool isLoading = true;
  final GlobalKey webViewKey = GlobalKey();
  // InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
  //     crossPlatform: InAppWebViewOptions(
  //       useShouldOverrideUrlLoading: true,
  //       mediaPlaybackRequiresUserGesture: false,
  //     ),
  //     android: AndroidInAppWebViewOptions(
  //       useHybridComposition: true,
  //     ),
  //     ios: IOSInAppWebViewOptions(
  //       allowsInlineMediaPlayback: true,
  //     ));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WhySuvidhasarathi_Apicalling_Webview();
  }

  Future<void> WhySuvidhasarathi_Apicalling_Webview() async {
    var data = {'LanguageID': "1", 'ApiKey': "123"};
    post(Uri.parse("${AppUrl.liveBaseURl}/GetAllStaticData"), body: data)
        .then((res) {
      logdav.log(res.body.toString(), name: 'response');
      jsonDecode(res.body)["Data"]["Question"][0]["Question"];
      WhySuvidhaSarathiModel whySuvidhasarathiModel =
          WhySuvidhaSarathiModel.fromJson(jsonDecode(res.body));
      List<Question> listQuestions = whySuvidhasarathiModel.data!.question!;
      for (int i = 0; i < listQuestions.length; i++) {
        print(listQuestions[i].question);
        print(listQuestions[i].answer);
      }
      List<Link> listLinks = whySuvidhasarathiModel.data!.link!;
      for (int i = 0; i < listLinks.length; i++) {
        print(listLinks[i].name);
        print(listLinks[i].text);
        if (listLinks[i].name == "WhyPadKranti") {
          // widget._controller!
          //     .loadUrl(urlRequest: URLRequest(url: Uri.parse("www.yahoo.com")));
          setState(() {
            target = listLinks[i].text;
          });
          // logdav.log(target);
        }
      }
      /*jsonDecode(res.body);
      whysuvidhasarathi_model modelclass =
          whysuvidhasarathi_model.fromJson(jsonDecode(res.body));
      var link = modelclass.data!.link!.forEach((element) {
        logdav.log(element.text.toString(), name: "text");
        logdav.log(element.name.toString(), name: "name");
        if (element.name == "AboutUs") {
          setState(() {
            target = element.text.toString();
          });
          // logdav.log(target);
        }
      });*/
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      drawer: CustomNavigationbar(
        index: widget.index,
      ),
      appBar: AppBar(
        title: Text('Why Suvidha sarthi'),
      ),
      body: target!.isNotEmpty
          ? Stack(
              alignment: Alignment.center,
              children: [
                WebView(
                  onPageStarted: (String url) async {
                    setState(() {
                      target = url;
                    });
                  },
                  onPageFinished: (finish) async {
                    setState(() {
                      isLoading = false;
                    });
                  },
                  onProgress: (int progress) {
                    setState(() {
                      this.progress = progress / 100;
                    });
                  },
                  key: webViewKey,
                  initialUrl: target,
                ),
                Positioned(
                    bottom: 50,
                    child: RoleID == '1'
                        ? Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.blue),
                            alignment: Alignment.center,
                            child: Text('sdhy'),
                          )
                        : Container())
              ],
            )

          // ? InAppWebView(
          //     key: webViewKey,
          //     initialOptions: options,
          //     initialUrlRequest: URLRequest(url: Uri.parse(target!)),
          //   )
          : isLoading
              ? _buildProgressBar()
              : Container(),
    );
  }

  Widget _buildProgressBar() {
    if (progress != 1.0) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Container();
  }
}
