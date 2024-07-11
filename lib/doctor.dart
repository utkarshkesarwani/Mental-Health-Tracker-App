import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Doctor Appointment"),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Find your desired doctor",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Insert the search bar here
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for a doctor",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Ionicons.search_outline),
                  ),
                ),
              ),
              Divider(
                thickness: 22,
                color: Colors.white,
              ),
              Container(
                width: double.maxFinite,
                height: 150,
                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        // Placeholder for the image (remove this and add the Image.asset() widget for the image)
                        color: Colors.grey,
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Harlom Quint",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Dental Specialist",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 18),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 8.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Ionicons.calendar_outline,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6, right: 14),
                                    child: Text(
                                      "Today",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    Ionicons.time_outline,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Text(
                                      "2:30 PM - 3:30 PM",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Psychiarist
                    Column(
                      children: [
                        Icon(
                          Icons.local_hospital,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("Psychiatrist"),
                      ],
                    ),
                    // Dental Surgeon
                    Column(
                      children: [
                        Icon(
                          Icons.local_hospital_outlined,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("Dental Surgeon"),
                      ],
                    ),
                    // Heart Surgeon
                    Column(
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("Heart Surgeon"),
                      ],
                    ),
                    // Eye Specialist
                    Column(
                      children: [
                        Icon(
                          Icons.remove_red_eye,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("Eye Specialist"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Health Needs",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Appointments
                    Column(
                      children: [
                        Icon(
                          Icons.calendar_today,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("Appointments"),
                      ],
                    ),
                    // Medicines
                    Column(
                      children: [
                        Icon(
                          Icons.medical_services,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("Medicines"),
                      ],
                    ),
                    // Hospitals
                    Column(
                      children: [
                        Icon(
                          Icons.local_hospital,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("Hospitals"),
                      ],
                    ),
                    // More
                    Column(
                      children: [
                        Icon(
                          Icons.more_horiz,
                          size: 30,
                        ),
                        const SizedBox(height: 4),
                        Text("More"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Top Doctors",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.maxFinite,
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        // Placeholder for the image (remove this and add the Image.asset() widget for the image)
                        color: Colors.grey,
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Tighe Tournkey",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Heart Specialist",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.maxFinite,
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        // Placeholder for the image (remove this and add the Image.asset() widget for the image)
                        color: Colors.grey,
                        width: 45,
                        height: 45,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr. Sebastian Blameworthy",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Eye Specialist",
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Add more top doctors widgets here if needed
            ],
          ),
        ),
      ),
    );
  }
}
