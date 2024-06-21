import 'package:flutter/material.dart';
import 'package:tree/components/post.dart';

class GenDashBoard extends StatefulWidget {
  const GenDashBoard({Key? key}) : super(key: key);

  @override
  State<GenDashBoard> createState() => _GenDashBoardState();
}

class _GenDashBoardState extends State<GenDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 42, 49, 70),
              Color.fromARGB(255, 87, 114, 202)
            ])),
        child: ListView(children: <Widget>[
          Card(
            child: InkWell(
              child: Image.asset(
                'assets/images/CE.png',
                fit: BoxFit.cover,
              ),
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            height: 50,
            child: const Center(
                child: Text(
              'Delhi University in search of Chemical Engineering Lab Assistants',
              style: TextStyle(color: Colors.white),
            )),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 61, 61, 61),
                border: Border.all(color: Colors.black, width: 1)),
          ),
          Card(
            child: InkWell(
              child: Image.asset(
                'assets/images/UA.png',
                fit: BoxFit.cover,
              ),
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
          ),
          Container(
            height: 50,
            child: const Center(
                child: Text(
              'Undergraduate Applications now open for RichFord University, Go Apply!',
              style: TextStyle(color: Colors.white),
            )),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 61, 61, 61),
                border: Border.all(color: Colors.black, width: 1)),
          ),
        ]),
        // child: ListView(
        //   padding: EdgeInsets.all(2),
        //   children: <Widget>[
        //     Padding(
        //         padding: EdgeInsets.all(8),
        //         child: TextPost(
        //           height: 73.0,
        //           data:
        //               "UCSD Library have requested the physical copy of 7th edition gen chem from Science Lirabry on loan for 3 Months.",
        //         )),
        //     Padding(
        //         padding: EdgeInsets.all(8),
        //         child: TextPost(
        //           height: 400.0,
        //         )),
        //     Padding(
        //         padding: EdgeInsets.all(8),
        //         child: TextPost(
        //           height: 600.0,
        //         ))
        //   ],
        // ),
      ),
    );
  }
}
