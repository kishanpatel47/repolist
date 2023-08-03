// import 'package:flutter/material.dart';
// import 'question.dart';
// import 'quiz_brain.dart';
//
// QuizBrain quizBrain = QuizBrain();
// void main() => runApp(Quizzler());
//
// class Quizzler extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade900,
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.0),
//             child: QuizPage(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class QuizPage extends StatefulWidget {
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   List<Icon> scroekeeper = [
//     Icon(
//       Icons.check,
//       color: Colors.green,
//     ),
//     Icon(
//       Icons.close,
//       color: Colors.red,
//     ),
//     Icon(
//       Icons.close,
//       color: Colors.red,
//     ),
//     Icon(
//       Icons.close,
//       color: Colors.red,
//     ),
//     Icon(
//       Icons.close,
//       color: Colors.red,
//     ),
//     Icon(
//       Icons.close,
//       color: Colors.red,
//     ),
//   ];
//
//   // List<String> questions = [
//   //   'You can lead a cow down stairs but not up stairs.',
//   //   'Approximately one quarter of human bones are in the feet.',
//   //   'A slug s blood is green.'
//   // ];
//   //
//   // List<bool> answer = [false, true, true];
//   // Question q1 = Question(
//   //     q: 'You can lead a cow down stairs but not up stairs.', a: false);
//
//
//   void
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Expanded(
//           flex: 5,
//           child: Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Center(
//               child: Text(
//                 quizBrain.getQuestionText(),
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.all(15.0),
//             child: TextButton(
//               style: TextButton.styleFrom(backgroundColor: Colors.deepOrange),
//               child: Text(
//                 'True',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                 ),
//               ),
//               onPressed: () {
//                 // setState(() {
//                 //   scroekeeper.add(Icon(Icons.check, color: Colors.lightGreen));
//                 // });
//                 bool correctAnswer = quizBrain.getCorrectAnswer();
//                 if (correctAnswer == true) {
//                   print('this is  right answer');
//                 } else {
//                   print('this.is wrong answer');
//                 }
//
//                 setState(() {
//                   quizBrain.nextQuestion();
//                 });
//
//                 //The user picked true.
//               },
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.all(15.0),
//             child: TextButton(
//               style: TextButton.styleFrom(backgroundColor: Colors.green),
//               child: Text(
//                 'False',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   color: Colors.white,
//                 ),
//               ),
//               onPressed: () {
//                 bool correctAnswer = quizBrain.getCorrectAnswer();
//                 if (correctAnswer == false) {
//                   print('this is  right answer');
//                 } else {
//                   print('this.is wrong answer');
//                 }
//
//                 setState(() {
//                   quizBrain.nextQuestion();
//                 });
//
//                 //The user picked false.
//               },
//             ),
//           ),
//         ),
//         // Row(
//         //   children: scroekeeper,
//         // )
//         //TODO: Add a Row here as your score keeper
//       ],
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Deatlies());
}

class Deatlies extends StatefulWidget {
  const Deatlies({Key? key}) : super(key: key);

  @override
  State<Deatlies> createState() => _DeatliesState();
}

class _DeatliesState extends State<Deatlies> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            width: 50,
            height: 50,
            child: IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: Icon(
                Icons.chevron_left,
              ),
            ),
          ),
          backgroundColor: Colors.lightGreen,
          title: Container(
              margin: EdgeInsets.all(0.5),
              child: Text(
                'Challenge Detail',
                style: TextStyle(),
              )),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 120,
                      color: Colors.white,
                    ),
                    Container(
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://previews.123rf.com/images/theartofphoto/theartofphoto1907/theartofphoto190700120/126729049-stylish-handsome-man-wearing-elegant-shirt-outside-in-urban-setting.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                            width: 90,
                            padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                            child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4cY-0IrAAsoObW6o0twEjuQsX9t3g6sJ_5g&usqp=CAU'))),
                  ],
                ),
              ),
              Row(children: [
                Container(
                  padding: EdgeInsets.fromLTRB(40, 20, 0, 0),
                  child: Text(
                    '50K',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: Text(
                    'Cycling Challenge',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.heart_broken_sharp),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.share),
                ),
              ]),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                    child: Icon(Icons.location_on),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text('Baroda location  i am  savan  patel'),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                      height: 40,
                      child: Icon(Icons.location_on)),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text('Delhi to Baroda'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                    alignment: Alignment.topLeft,
                    height: 40,
                    width: 35,
                    child: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/2257/2257266.png'),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                      height: 40,
                      child: Icon(Icons.access_alarm)),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text('10.00AM to 11.00AM'),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                    child: Text(
                      'Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    child: Text(
                      'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      child: Text(
                        'Accept',
                        style: TextStyle(fontSize: 12),
                      ),
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          foregroundColor: Colors.white,
                          elevation: 2,
                          backgroundColor: Colors.green),
                    ),
                  ),
                  Container(
                    width: 600,
                    padding: EdgeInsets.only(bottom: 0.0),
                    margin: EdgeInsets.all(30),
                    color: Colors.white70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Icon(Icons.update, color: Colors.blue),
                            ),
                            Container(
                              child: Text(
                                'Update',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Icon(Icons.event, color: Colors.pink),
                            ),
                            Container(
                              child: Text(
                                'Event',
                                style: TextStyle(color: Colors.pink),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.network(
                                  'https://cdni.iconscout.com/illustration/premium/thumb/the-boy-is-riding-a-bicycle-6474250-5382457.png'),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(children: [
                          Container(
                              child: Icon(Icons.candlestick_chart_rounded,
                                  color: Colors.orangeAccent)),
                          Container(
                            child: Text(
                              'Challenge',
                              style: TextStyle(color: Colors.orangeAccent),
                            ),
                          ),
                        ]),
                        SizedBox(
                          width: 10,
                        ),
                        Column(children: [
                          Container(
                              child: Icon(Icons.archive, color: Colors.red)),
                          Container(
                            child: Text(
                              'Achievements',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
