import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  return runApp(const Pinoo());
}

class Pinoo extends StatefulWidget {
  const Pinoo({Key? key}) : super(key: key);

  @override
  State<Pinoo> createState() => _PinooState();
}

class _PinooState extends State<Pinoo> {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Random random = new Random();
  int index = 0;
  void changeIndex() {
    setState(() => index = random.nextInt(6) + 1);
  }

  Expanded buildkey({required Color color, soundNumber}) {
    Color generateRandomColor1() {
      // Define all colors you want here
      const predefinedColors = [
        Colors.red,
        Colors.green,
        Colors.blue,
        Colors.black,
        Colors.white
      ];
      // Random random = Random();
      double randomDouble = random.nextDouble();

      return predefinedColors[(randomDouble * 0xFFFFFF).toInt()];
    }

    return Expanded(
      child: Container(
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () {
            playsound(soundNumber);
          },
          child: Text('Play$soundNumber',
              style: TextStyle(
                color:
                    Colors.primaries[Random().nextInt(Colors.accents.length)],
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    soundNumber: 1),
                buildkey(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    soundNumber: 2),
                buildkey(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    soundNumber: 3),
                buildkey(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    soundNumber: 4),

                buildkey(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    soundNumber: 5),

                buildkey(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    soundNumber: 6),

                buildkey(
                    color: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    soundNumber: 7),
                // Expanded(
                //   child: Container(
                //     width: double.infinity,
                //     color: Colors.black,
                //     child: TextButton(
                //         onPressed: () {
                //           playsound(1);
                //         },
                //         child: Text(
                //           'Play1',
                //           style: TextStyle(color: Colors.white),
                //         )),
                //   ),
                // ),
                // Expanded(
                //     child: Container(
                //   width: double.infinity,
                //   color: Colors.white60,
                //   child: TextButton(
                //       onPressed: () {
                //         playsound(2);
                //       },
                //       child: Text(
                //         'Play2',
                //         style: TextStyle(color: Colors.black),
                //       )),
                // )),
                // Expanded(
                //   child: Container(
                //     width: double.infinity,
                //     color: Colors.black,
                //     child: TextButton(
                //         onPressed: () {
                //           playsound(3);
                //         },
                //         child: Text(
                //           'Play3',
                //           style: TextStyle(color: Colors.white),
                //         )),
                //   ),
                // ),
                // Expanded(
                //   child: Container(
                //     width: double.infinity,
                //     color: Colors.white,
                //     child: TextButton(
                //         onPressed: () {
                //           playsound(4);
                //         },
                //         child: Text(
                //           'Play4',
                //           style: TextStyle(color: Colors.black),
                //         )),
                //   ),
                // ),
                // Expanded(
                //   child: Container(
                //     width: double.infinity,
                //     color: Colors.black,
                //     child: TextButton(
                //         onPressed: () {
                //           playsound(5);
                //         },
                //         child: Text(
                //           'Play5',
                //           style: TextStyle(color: Colors.white),
                //         )),
                //   ),
                // ),
                // Expanded(
                //   child: Container(
                //     width: double.infinity,
                //     color: Colors.white,
                //     child: TextButton(
                //         onPressed: () {
                //           playsound(6);
                //         },
                //         child: Text(
                //           'Play6',
                //           style: TextStyle(color: Colors.black),
                //         )),
                //   ),
                // ),
                // Expanded(
                //   child: Container(
                //     width: double.infinity,
                //     color: Colors.black,
                //     child: TextButton(
                //         onPressed: () {
                //           playsound(7);
                //         },
                //         child: Text(
                //           'Play7',
                //           style: TextStyle(color: Colors.white),
                //         )),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
