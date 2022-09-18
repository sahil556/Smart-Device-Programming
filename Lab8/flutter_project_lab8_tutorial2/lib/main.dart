import 'package:flutter/material.dart';
import 'Quote.dart';

void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  // List<String> quotes = [
  // 'The truth is realy pure and never simple',
  // 'I see humans but no humanity',
  // 'The time is always right to do what is right'
  // ];
// List<String> author = [];

/* this will create error..because list is now not of string....
 List<String> quotes = [
 Quote(text: 'The truth is realy pure and never simple',author:
'jignesh1'),
 ];

*/
  //   List<Quote> quotes = [
  //   Quote(text: 'The truth is realy pure and never simple',author:
  //   'sahil nandaniya'),
  //   Quote(author: 'sahil', text: 'I see humans but no humanity'),
  //   Quote(text: 'The time is always right to do what is right',author:
  //   'sahil nandaniya'),
  // ];
  List<Quote> quotes = [
    Quote(text: 'The truth is realy pure and never simple', author: 'sahil1'),
    Quote(author: 'sahilpatel', text: 'I see humans but no humanity'),
    Quote(
        text: 'The time is always right to do what is right', author: 'sahil'),
  ];
  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 26,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// class EchoList extends StatefulWidget {
//   const EchoList({Key? key}) : super(key: key);
//
//   @override
//   State<EchoList> createState() => _EchoListState();
// }
//
// class _EchoListState extends State<EchoList> {
//   List<String> quotes = [
//     'The truth is realy pure and never simple',
//     'I see humans but no humanity',
//     'The time is always right to do what is right'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.orangeAccent[100],
//         appBar: AppBar(
//         title: Text('Quotes'),
//     centerTitle: true,
//     backgroundColor: Colors.orangeAccent,
//     ),
//       body: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes.map((quote) => Text(quote)).toList(),
//       ),
//
//     );
//   }
// }

//
// class FinalTest extends StatefulWidget {
//   @override
//   State<FinalTest> createState() => _FinalTestState();
// }
//
// class _FinalTestState extends State<FinalTest> {
// // const FinalTest1({Key? key}) : super(key: key);
//   num age = 19.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue[100],
//       appBar: AppBar(
//         title: Text('First App'),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlue[600],
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // following can't changes the variables 'state' value
//           // age++;
//           // apply following code to change any state variable value
//           setState(() {
//             age += 1;
//           });
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.brown,
//       ),
//
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/sub_assets/img2.png'
//               , ),
//               radius: 60,
//
//             ),
//
//             Text(
//               'NAME: ',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'SAHIL NANDANIYA',
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 40),
//             Text(
//               'AGE',
//               style: TextStyle(
//                 color: Colors.grey[800],
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               age.toString(),
//               style: TextStyle(
//                 color: Colors.blue[900],
//                 letterSpacing: 2.0,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//               ),
//             ),
//             SizedBox(height: 50),
//             Row(
//               children: [
//                 Icon(
//                   Icons.email_rounded,
//                   color: Colors.deepPurple[800],
//                 ),
//                 SizedBox(width: 12.0),
//                 Text(
//                   'sahilnandaniya.ce@ddu.ac.in',
//                   style: TextStyle(
//                     color: Colors.brown[800],
//                     fontSize: 16.0,
//                     letterSpacing: 1.5,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//
//     );
//   }
// }
//
