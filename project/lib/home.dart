import 'package:flutter/material.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // TimeOfDay present = TimeOfDay.now();
  String greetings() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'GoodMoring,User';
    }
    if (hour < 17) {
      return 'Goodafternoon,User';
    }
    if (hour < 21) {
      return 'Good evening,User';
    } else {
      return 'Goodnight,User';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: ListView(
          children: [
            Container(
              child: ListTile(
                tileColor: Color.fromARGB(255, 120, 192, 251),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                leading: Icon(Icons.home),
                hoverColor: Colors.amber,
                title: Container(
                  child: Text(
                    'Home',
                    style: TextStyle(fontSize: 25),
                  ),
                  margin: EdgeInsets.only(left: 95),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Text(
                  greetings(),
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 98, 176, 240),
                      fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(right: 100),
              ),
            ),
            flowerlist('assets/flo.JPG', 'rose', '111'),

            flowerlist('assets/Rectangle 1 (1).png', 'whiterose', '133'),
            flowerlist('assets/Rectangle 1 (2).png', 'petal', '177'),
            flowerlist('assets/Rectangle 1 (3).png', 'dandalion', '166'),
            flowerlist('assets/Rectangle 1.png', 'merry', '188'),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(40),
            //         boxShadow: [
            //           BoxShadow(
            //               color: Color.fromARGB(255, 157, 157, 157),
            //               offset: Offset(2, 2))
            //         ]),
            //     child: Image.asset(
            //       'assets/flo.JPG',
            //       height: 100,
            //     ),
            //   ),
            // ),
          ],
        )
        // child: Column(
        //   children: [
        //     ListTile(
        //       tileColor: Color.fromARGB(255, 120, 192, 251),
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25)),
        //       leading: Icon(Icons.home),
        //       hoverColor: Colors.amber,
        //       title: Container(
        //         child: Text(
        //           'Home',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //         margin: EdgeInsets.only(left: 95),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(10),
        //       child: Container(
        //         child: Text(
        //           greetings(),
        //           style: TextStyle(
        //               fontSize: 30,
        //               color: Color.fromARGB(255, 98, 176, 240),
        //               fontWeight: FontWeight.bold),
        //         ),
        //         margin: EdgeInsets.only(right: 130),
        //       ),
        //     ),
        //     Container(
        //       child: Column(
        //         children: [
        //           Container(
        //               child: ListTile(trailing: Icon(Icons.shopping_cart))),
        //         ],
        //       ),
        //     )
        //   ],
        // ),

        );
  }
}

class flowerlist extends StatefulWidget {
  final String img;
  final String f_name;
  final String f_price;
  const flowerlist(
    this.img,
    this.f_name,
    this.f_price,
  );

  @override
  State<flowerlist> createState() => _flowerlistState();
}

class _flowerlistState extends State<flowerlist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 157, 157, 157),
                    offset: Offset(2, 2))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(80),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(widget.img),
                    )),
                height: 100,
                width: 100,
              ),
              Container(
                child: Column(
                  children: [Text(widget.f_name), Text(widget.f_price)],
                ),
              ),
              Container(
                child: Icon(Icons.shopping_cart),
                margin: EdgeInsets.only(right: 10),
              )
            ],
          )),
    );
  }
}
