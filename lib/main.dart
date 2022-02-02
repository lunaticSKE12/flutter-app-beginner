import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String showResult = '';

  Future<void> getData() async {
    try {
      Uri url = Uri.parse('http://localhost:8888/mywebsite/webservice.php');
      http.Response response = await http.get(url);
      // print(response.body);
      var result = jsonDecode(response.body);

      // showResult = result['status'];
      // print(result['data'][0]['name']);
      showResult = result['data'][0]['name'];
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();

    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API"),
      ),
      body: Center(
        child: Text(showResult),
      ),
    );
  }
}
