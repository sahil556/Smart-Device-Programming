import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project_lab11_tutorial1/services/world_time.dart';

class Choose_location extends StatefulWidget {
  const Choose_location({Key? key}) : super(key: key);

  @override
  State<Choose_location> createState() => _Choose_locationState();
}

class _Choose_locationState extends State<Choose_location> {
  int counter = 0;
  List<WordTime> locations = [
    WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata'),
    WordTime(location: 'Manila',flag: 'philippines.png',url: 'Asia/Manila'),
    WordTime(location: 'Singapore',flag: 'singapore.png',url: 'Asia/Singapore'),
    WordTime(location: 'Brisbane',flag: 'australia.png',url: 'Australia/Brisbane'),
    WordTime(location: 'Madrid',flag: 'spain.png',url: 'Europe/Madrid'),
    WordTime(location: 'Vienna',flag: 'austria.png',url: 'Europe/Vienna'),
    WordTime(location: 'Maldives',flag: 'maldives.png',url: 'Indian/Maldives'),
    WordTime(location: 'Johannesburg',flag: 'south-africa.png',url:
    'Africa/Johannesburg'),
    WordTime(location: 'Barbados',flag: 'barbados.png',url: 'America/Barbados'),
    WordTime(location: 'Costa_Rica',flag: 'costa-rica.png',url:
    'America/Costa_Rica'),
    WordTime(location: 'Jamaica',flag: 'jamaica.png',url: 'America/Jamaica'),
    WordTime(location: 'Phoenix',flag: 'usa.png',url: 'America/Phoenix'),
    WordTime(location: 'Broken_Hill',flag: 'australia.png',url:
    'Australia/Broken_Hill'),
    WordTime(location: 'Moscow',flag: 'russia.png',url: 'Europe/Moscow'),
  ];
  void updateTime(index) async {
    WordTime instance = locations[index];
    await instance.getTime();
    // navigate to home screen by popping instead of pushing new replica
    // of home screen
    Navigator.pop(context,{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    // print('BUILD FUNCTION RUN IN CHOOSE LOCATION');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 1.0,
      ),
        // body:  ElevatedButton(onPressed: (){
        //   setState((){
        //     counter += 1;
        //   });
        // },
        //   child: Text("Counter is : $counter "),
        // ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location.toString()),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/flags/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),



    );
  }
}
