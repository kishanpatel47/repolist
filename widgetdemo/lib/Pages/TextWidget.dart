import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
      color: Colors.deepPurple,
      width: 50,
      child: Text(
        ' Hello  i am tex',
        textAlign: TextAlign.center,
        textScaleFactor: 1.0,
        // maxLines: 5,
        // softWrap: true,
        overflow: TextOverflow.ellipsis,
        semanticsLabel: 'text',
      ),
    );
  }
}
