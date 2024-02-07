import 'package:flutter/material.dart';

import 'reportiregulerities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stay Informed on Election Day',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ElectionDayInformationScreen(),
    );
  }
}

class ElectionDayInformationScreen extends StatelessWidget {
  // Function to simulate accessing election day information
  void accessElectionDayInformation(BuildContext context) {
    // Add your logic for accessing election day information here
    // In this example, it navigates to the ReportIrregularitiesScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ReportIrregularitiesScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Informed on Election Day'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              accessElectionDayInformation(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            // Image at the top of the screen
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/images (33).jpg'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stay Informed on Election Day',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Important Information:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('1. Check for any changes in polling locations.'),
                Text('2. Stay updated on weather conditions for Election Day.'),
                Text('3. Be aware of any factors that may affect your ability to vote.'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    accessElectionDayInformation(context);
                  },
                  child: Text('Access Information'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

