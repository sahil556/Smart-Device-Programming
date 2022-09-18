import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FinalTest1(),
  ));
}

class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreen[200],
      appBar: AppBar(
        title: Text('Row And Column Alignment'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
      ),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.baseline, // may generate error....
        children: [
          Expanded(
            child: Container(
              color: Colors.deepOrange[800],
              padding: EdgeInsets.all(30.0),
              child: Text('1'),
            ),
          ),

          Container(
            color: Colors.limeAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('2'),
          ),

          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(30.0),
            child: Text(' 3'),
          ),

          // Text('HELLO ROW'),
          // FlatButton(
          //   onPressed: () {},
          //   color: Colors.purple,
          //   child: Text('press me'),
          // ),
          // Container(
          //   color: Colors.cyanAccent,
          //   padding: EdgeInsets.all(30.0),
          //   child: Text('inside container'),
          // ),
        ],
      ),

      // Row(
      //   children: [
      //     Text('HELLO ROW'),
      //     FlatButton(
      //       onPressed: () {},
      //       color: Colors.purple,
      //       child: Text('press me'),
      //     ),
      //     Container(
      //       color: Colors.cyanAccent,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('inside container'),
      //     ),
      //   ],
      // ),
      // Padding(
      //   padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       CircleAvatar(
      //         backgroundImage: AssetImage('images/dog3.jpg'),
      //       ),
      //       Text(
      //         'NAME: ',
      //         style: TextStyle(
      //           color: Colors.grey[800],
      //           letterSpacing: 2.0,
      //         ),
      //       ),
      //       SizedBox(height: 10),
      //       Text(
      //         'Sahil Nandaniya',
      //         style: TextStyle(
      //           color: Colors.blue[900],
      //           letterSpacing: 2.0,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       SizedBox(height: 40),
      //       Text(
      //         'AGE',
      //         style: TextStyle(
      //           color: Colors.grey[800],
      //           letterSpacing: 2.0,
      //         ),
      //       ),
      //       SizedBox(height: 10),
      //       Text(
      //         '19',
      //         style: TextStyle(
      //           color: Colors.blue[900],
      //           letterSpacing: 2.0,
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20.0,
      //         ),
      //       ),
      //       SizedBox(height: 50),
      //       Row(
      //         children: [
      //           Icon(
      //             Icons.email_rounded,
      //             color: Colors.deepPurple[800],
      //           ),
      //           SizedBox(width: 12.0),
      //           Text(
      //             'sahilpatel@ddu.ac.in',
      //             style: TextStyle(
      //               color: Colors.brown[800],
      //               fontSize: 16.0,
      //               letterSpacing: 1.5,
      //             ),
      //           )
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
