import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mentalhealth/doctor.dart';
import 'package:mentalhealth/tools.dart';
import 'package:mentalhealth/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Jane"),
            Text(
              "How are you Feeling today?",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Show the date picker when the calendar icon is pressed
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2025),
              );
            },
            icon: const Icon(Ionicons.calendar_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 16), // Add a gap between AppBar and Container
          Container(
            height: 200,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.cyan.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20), // Apply rounded corners to the container
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Daily Goals",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "45%",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mood Sound",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "41%",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Add the stress meter bar graph here
                LinearProgressIndicator(
                  value: 0.45, // Replace this with the actual stress level percentage
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue), // Customize the progress bar color
                  backgroundColor: Colors.grey.withOpacity(0.5), // Customize the background color of the progress bar
                ),
            SizedBox(height: 8), // Add a gap between the progress bar and the text
            Text(
              "Stress Level: 45%", // Replace this with the actual stress level percentage
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
              ],
            ),
          ),
          SizedBox(height: 16), // Add a gap between the first and second containers
          Container(
            height: 100,
            color: Colors.yellow.withOpacity(0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Heart Rate",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "80 bpm", // Replace with the actual heart rate number
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 24), // Add a gap between the heart icon and step icon
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.do_not_step,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Footsteps",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "2000", // Replace with the actual number of steps
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // ... Previous code ...

          SizedBox(height: 16), // Add a gap between the second container and the first row of icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.indigoAccent.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box, color: Colors.black, size: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box, color: Colors.black, size: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.indigoAccent.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box_outline_blank, color: Colors.black, size: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.pinkAccent.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box_outline_blank, color: Colors.black, size: 18),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Mood 1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Text("Mood2", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Text("Gratitude", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Text("Sleep", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 16), // Add a gap between the first and second rows of icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.brown.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box_outline_blank, color: Colors.black, size: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlue.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box_outline_blank, color: Colors.black, size: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.green.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box_outline_blank, color: Colors.black, size: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.yellow.withOpacity(0.3),
                  radius: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.green.withOpacity(0.3),
                    radius: 30,
                    child: Icon(Icons.check_box_outline_blank, color: Colors.black, size: 18),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Mood 3", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Text("Mood 4", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Text("Gratitude", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              Text("Sleep", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 16), // Add a gap between the rows of icons and the "Tasks" button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
              // Add your action for the "Tasks" button here
            },
            child: Text("Tasks"),
          ),



          Expanded(
            child: ListView(
              children: const [], // Add your ListView children here
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true, // Set to true to show labels for selected icon
        showUnselectedLabels: true, // Set to true to show labels for unselected icon
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation here based on the index.
          if (index == 2) {
            // Navigate to the UpcomingCard (ChatPage) when the chat icon is pressed.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UpcomingCard()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ToolPage()),
            );
            // You can handle other navigation options here.
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets),
            label: "Widgets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_rounded),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_sharp),
            label: "Tools",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
