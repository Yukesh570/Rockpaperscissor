import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Text(
                  'data',
                  style: TextStyle(
                    color: Colors.amber,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Text('data'),
              ),
              Container(
                child: Text('data2'),
              ),
              Container(
                child: Text('data1'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
