import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Tracker'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0), // Add padding around the ListView
        children: [
          _buildContainerWithContent(context, Colors.blue, 'Q1: How do you cope with stress or difficult emotions? Are there any coping mechanisms that you find helpful? '),
          SizedBox(height: 10), // Add a small gap between the first and second containers
          _buildContainerWithContent(context, Colors.green, 'Q2: Have you experienced any traumatic events or significant life changes recently?'),
          SizedBox(height: 10), // Add a small gap between the second and third containers
          _buildContainerWithContent(context, Colors.red, 'Q3: Are you currently taking any medication or receiving any mental health treatment? '),
          SizedBox(height: 10), // Add a small gap between the third and fourth containers
          _buildContainerWithContent(context, Colors.pinkAccent, 'Q4: Have you ever been diagnosed with a mental health condition, and if so, are you currently managing it? '),
        ],
      ),
    );
  }

  Widget _buildContainerWithContent(BuildContext context, Color color, String question) {
    return Container(
      height: 150,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 16), // Add some space between the text and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle "Yes" button tap
                },
                child: Text('Yes'),
              ),
              SizedBox(width: 16), // Add some space between the buttons
              ElevatedButton(
                onPressed: () {
                  // Handle "No" button tap
                },
                child: Text('No'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
