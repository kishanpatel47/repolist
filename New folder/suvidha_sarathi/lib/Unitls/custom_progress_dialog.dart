import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomProgressDialog {
  Column loadingSpinner(BuildContext context, int factortop) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height / factortop,
          child: Center(
            child: Container(
                height: double.infinity,
                width: double.infinity,
                margin: EdgeInsets.all(5),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 16,
                      ),
                      Text("Please Wait...")
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
