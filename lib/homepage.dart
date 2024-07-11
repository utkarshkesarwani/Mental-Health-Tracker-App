import 'package:flutter/material.dart';
import 'package:mentalhealth/login.dart';
import 'package:mentalhealth/signup.dart';


class MentalHealthAppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health App'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 24.0),
            Text(
              'Welcome to the Mental Health App',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Take control of your mental well-being',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                // Navigate to the login screen
              },
              child: Text('Log In'),
            ),
            SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
                // Navigate to the sign-up screen
              },
              child: Text('Sign Up'),
            ),
            Spacer(),
            Text(
              '© 2023 Mental Health App. All rights reserved.',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
