import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class loading extends StatefulWidget {
  @override
  State<loading> createState() => _loadingState();
}
class _loadingState extends State<loading> {
  void getData() async {
    final response = await
    get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body); // it response in JSON form out put ...we need MAP
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Text('LOADING SCREEN'),
      ),

    );
  }
}
