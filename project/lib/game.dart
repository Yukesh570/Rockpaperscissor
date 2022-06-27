import 'package:flutter/material.dart';
import 'dart:math';

class game extends StatefulWidget {
  game({Key? key}) : super(key: key);

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  int num = 1;
  int num1 = 3;
  var yuk;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.amber[50],
        child: Padding(
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
                              color: Colors.black,
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
                              color: Colors.black,
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
                              color: Colors.black,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11),
                    child: Container(
                      child: Image.asset(
                        'assets/img$num.jpeg',
                      ),
                      height: 130,
                      width: 160,
                    ),
                  ),
                  Text(
                    'VS',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0,
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
                    color: Colors.black,
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
    );
  }
}
