import 'package:flutter/material.dart';
class Choose_location extends StatefulWidget {
  const Choose_location({Key? key}) : super(key: key);

  @override
  State<Choose_location> createState() => _Choose_locationState();
}

class _Choose_locationState extends State<Choose_location> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('BUILD FUNCTION RUN IN CHOOSE LOCATION');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 1.0,
      ),
        body:  ElevatedButton(onPressed: (){
          setState((){
            counter += 1;
          });
        },
          child: Text("Counter is : $counter "),
        ),


    );
  }
}
