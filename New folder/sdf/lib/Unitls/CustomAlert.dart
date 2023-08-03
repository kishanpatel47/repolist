//custom_alert_dialog.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAlertDialog extends StatefulWidget {
  CustomAlertDialog({
    Key? key,
    required this.onpress,
    required this.title,
    required this.description,
    required this.event_text,
  }) : super(key: key);
  VoidCallback onpress;
  final String title, description, event_text;

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: EdgeInsets.all(30),
        child: SizedBox(
            height: 165,
            width: MediaQuery.of(context).size.width * 0.85,
            child: Container(
              margin: EdgeInsets.all(15),
              child: Stack(
                children: [
                  // Container(
                  //   margin: EdgeInsets.only(top: 25),
                  //   child: Text(
                  //     widget.description,
                  //     style: GoogleFonts.oldenburg(fontSize: 16),
                  //   ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.title,
                          style: GoogleFonts.dynaPuff(fontSize: 17),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          widget.description,
                          style: GoogleFonts.oldenburg(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    onPressed: widget.onpress,
                    child: Container(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          widget.event_text,
                          style: GoogleFonts.oldenburg(
                              fontSize: 16, color: Colors.black),
                        )),
                  )
                ],
              ),
            )));
    // Container(
    //   padding: EdgeInsets.all(12),
    //   child: Column(
    //
    //     children: [
    //       Container(
    //         alignment: Alignment.topLeft,
    //         child: Text(
    //           "${widget.title}",
    //           style: TextStyle(
    //             fontSize: 30.0,
    //             fontWeight: FontWeight.w800,
    //           ),
    //         ),
    //       ),
    //       SizedBox(
    //         height: 8,
    //       ),
    //       Container(
    //         alignment: Alignment.topLeft,
    //         child: Text(
    //           "${widget.description}",
    //           style: TextStyle(
    //             fontSize: 20.0,
    //           ),
    //         ),
    //       ),
    //       SizedBox(height: 10),
    //       Container(
    //         width: MediaQuery.of(context).size.width,
    //         child: InkWell(
    //           highlightColor: Colors.grey[200],
    //           onTap: () {
    //             //do somethig
    //           },
    //           child: Container(
    //             alignment: Alignment.topRight,
    //             child: Text(
    //               "Continue",
    //               style: TextStyle(
    //                 fontSize: 18.0,
    //                 height: 2.5,
    //                 color: Theme.of(context).primaryColor,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
  }
}
