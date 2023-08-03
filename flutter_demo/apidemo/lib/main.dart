import 'package:apidemo/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
void main(){
  runApp(const AndroidMeniest() );
}
class AndroidMeniest extends StatefulWidget {
  const AndroidMeniest({super.key});

  @override
  State<AndroidMeniest> createState() => _AndroidMeniestState();
}

class _AndroidMeniestState extends State<AndroidMeniest> {
  @override
  Widget build(BuildContext context) {
    return Homescreen();
  }
}