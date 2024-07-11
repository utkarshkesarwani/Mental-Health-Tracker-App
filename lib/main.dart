import 'package:flutter/material.dart';
import 'package:mentalhealth/homepage.dart';
import 'package:mentalhealth/signup.dart';
import 'package:mentalhealth/login.dart';
import 'package:mentalhealth/forgetpassword.dart';
import 'package:mentalhealth/mainhomescreen.dart';
import 'package:mentalhealth/doctor.dart';
import 'package:mentalhealth/tasks.dart';
import 'package:mentalhealth/taskquestion.dart';
import 'package:mentalhealth/tools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MentalHealthAppHomePage(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Container(
        color: Colors.blue.shade50,
      ),
    );
  }
}
