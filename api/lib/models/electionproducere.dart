import 'package:flutter/material.dart';

import 'election_dayinformatio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Election Procedures App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ElectionProceduresScreen(),
    );
  }
}

class ElectionProceduresScreen extends StatelessWidget {
  // Function to simulate accessing election procedures
  void accessElectionProcedures(BuildContext context) {
    // Add your logic for accessing election procedures here
    // For example, you can navigate to a detailed procedures screen or perform an action
    // In this example, it shows a simple confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Accessing Election Procedures'),
          content: Text('You are now informed about election procedures!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                navigateToElectionDayInformation(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Function to navigate to the ElectionDayInformationScreen
  void navigateToElectionDayInformation(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ElectionDayInformationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Be Informed About Election Procedures'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              accessElectionProcedures(context);
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
                image: AssetImage('images/images (32).jpg'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Be Informed About Election Procedures',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Learn about the election procedures to ensure your participation is smooth and informed.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

