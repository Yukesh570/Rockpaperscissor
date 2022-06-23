import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int num = 1;
int num1 = 3;
var yuk;

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 61, 63, 72),
            title: Text(
              'Yukesh',
              style: TextStyle(
                fontFamily: 'BebasNeue',
                letterSpacing: 2,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              num = 1;
                              num1 = Random().nextInt(3) + 1;
                              print(num);
                            });
                          },
                          child: Container(
                            child: Text(
                              'Paper',
                              style: TextStyle(
                                backgroundColor: Colors.grey,
                                fontFamily: 'BebasNeue',
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              num = 2;
                              num1 = Random().nextInt(3) + 1;
                              print(num);
                            });
                          },
                          child: Container(
                            child: Text(
                              'Rock',
                              style: TextStyle(
                                backgroundColor: Colors.brown,
                                fontFamily: 'BebasNeue',
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              num = 3;
                              num1 = Random().nextInt(3) + 1;
                              print(num);
                            });
                          },
                          child: Container(
                            child: Text(
                              'Scissor',
                              style: TextStyle(
                                backgroundColor: Colors.yellow,
                                fontFamily: 'BebasNeue',
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset('assets/img$num.jpeg'),
                      height: 130,
                      width: 160,
                    ),
                    Text(
                      'VS',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        backgroundColor: Colors.black,
                      ),
                    ),
                    Container(
                      child: Image.asset('assets/img$num1.jpeg'),
                      height: 130,
                      width: 160,
                    ),
                  ],
                ),
                if ((num == 1 && num1 == 1) ||
                    (num == 2 && num1 == 2) ||
                    (num == 3 && num1 == 3))
                  Text(
                    'draw',
                    style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 4,
                      backgroundColor: Colors.blue,
                      fontFamily: 'BebasNeue',
                    ),
                  ),
                if ((num == 1 && num1 == 2) ||
                    (num == 2 && num1 == 3) ||
                    (num == 3 && num1 == 1))
                  Text(
                    'win',
                    style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 4,
                      backgroundColor: Colors.green,
                      fontFamily: 'BebasNeue',
                    ),
                  ),
                if ((num == 1 && num1 == 3) ||
                    (num == 2 && num1 == 1) ||
                    (num == 3 && num1 == 2))
                  Text(
                    'loss',
                    style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 4,
                      backgroundColor: Colors.red,
                      fontFamily: 'BebasNeue',
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
