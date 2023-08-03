// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const Details());
// }
//
// class Details extends StatefulWidget {
//   const Details({Key? key}) : super(key: key);
//
//   @override
//   State<Details> createState() => _DetailsState();
// }
//
// class _DetailsState extends State<Details> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.lightGreen,
//           titleSpacing: 0.5,
//           leadingWidth: 38,
//           leading: Icon(size: height / 13, Icons.chevron_left),
//           title: Text(
//             'Challenge Detail',
//           ),
//         ),
//         body: SafeArea(
//           child: Column(
//             children: [Text('data')],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          titleSpacing: 0.5,
          leadingWidth: 38,
          leading: Icon(size: 40, Icons.chevron_left),
          title: Text(
            'Challenge Detail',
          ),
        ),
        body: Container(
            child: Column(children: [
          Stack(
            children: [
              Container(
                width: width * 1,
                height: height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.outsideonline.com/wp-content/uploads/2020/11/19/cyclist-lens-flare_h.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: height * .11,
                left: height * .32,
                child: Container(
                  height: width * .4,
                  width: width * .25,
                  alignment: Alignment.bottomRight,
                  child: Image.network(
                      'https://thumbs.dreamstime.com/b/thirteen-days-left-icon-to-go-vector-offer-countdown-date-number-abstract-banner-stopwatch-sign-count-chat-bubble-timer-223377512.jpg'),
                ),
                // child: Image.network(
                //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHJeb5ODaM0PmvpbRSSAzR8qxxUg-huVuf__uJCxIlqedmxq__ew6gkNwayG9uN5y3_-k&usqp=CAU')
                //
              )
            ],
          ),
          Row(children: [
            Container(
              padding: EdgeInsets.fromLTRB(40, 15, 0, 0),
              child: Text(
                '50K',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: Text(
                'Cycling Challenge',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.fromLTRB(55, 15, 0, 0),
                alignment: Alignment.bottomRight,
                child: Icon(Icons.heart_broken_sharp),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
              alignment: Alignment.topLeft,
              child: Icon(Icons.share),
            ),
          ]),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(39, 10, 0, 0),
                child: Icon(Icons.location_on),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Text(
                  'Baroda location  i am  savan  patel',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(39, 10, 0, 0),
                  height: 40,
                  child: Icon(Icons.track_changes)),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Delhi to Baroda',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(140, 15, 0, 0),
                alignment: Alignment.topLeft,
                height: 30,
                width: 30,
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/2257/2257266.png'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(35, 5, 0, 0),
                  height: 40,
                  child: Icon(Icons.access_alarm)),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  '10.00AM to 11.00AM',
                  style: TextStyle(fontSize: 15),
                ),
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
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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
                      Container(child: Icon(Icons.archive, color: Colors.red)),
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
        ])));
  }
}
