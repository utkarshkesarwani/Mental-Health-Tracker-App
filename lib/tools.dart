import 'package:flutter/material.dart';

class ToolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Tools"),
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 16), // Add a small gap between app bar and first container
            Container(
              height: 80,
              color: Colors.cyan.withOpacity(0.3), // Set the background color of the first container
              padding: EdgeInsets.all(16.0), // Optional: Add padding to the first container
              child: Center(
                child: Text(
                  "Tools to reduce stress and build up your mood fitness.",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(height: 16), // Add a gap between the first container and the new containers
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align the containers with equal spacing
              children: [
                // First additional container with CircleAvatar and Icon on the left side
                Container(
                  width: double.maxFinite,
                  height: 80,
                  color: Colors.orange.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orange.withOpacity(0.3),

                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Mood",
                        style: TextStyle(fontSize: 14),

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Second additional container
                Container(
                  width: double.maxFinite,
                  height: 80,
                  color: Colors.lightBlue.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orange.withOpacity(0.3),

                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Breathing",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Third additional container
                Container(
                  width: double.maxFinite,
                  height: 80,
                  color: Colors.pinkAccent.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orange.withOpacity(0.3),

                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Stress",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Fourth additional container
                Container(
                  width: double.maxFinite,
                  height: 80,
                  color: Colors.greenAccent.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orange.withOpacity(0.3),

                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Heart beat",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Fifth additional container
                Container(
                  width: double.maxFinite,
                  height: 80,
                  color: Colors.cyanAccent.withOpacity(0.3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.orange.withOpacity(0.3),

                        ),
                      ),
                      SizedBox(width: 16),
                      Text(
                        "Steps",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
