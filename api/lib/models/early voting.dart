import 'package:flutter/material.dart';

import 'electionproducere.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Early Voting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EarlyVotingScreen(),
    );
  }
}

class EarlyVotingScreen extends StatelessWidget {
  // Function to simulate participation in early voting
  void participateInEarlyVoting(BuildContext context) {
    // Add your logic for early voting participation here
    // For example, you can navigate to a confirmation screen or perform an action
    // In this example, it shows a simple confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Early Voting Confirmation'),
          content: Text('You have participated in early voting!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // Function to navigate to the "ElectionProceduresScreen"
  void navigateToElectionProcedures(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ElectionProceduresScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Participate in Early Voting'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/images (31).jpg'), // Replace with your image asset
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
                  'Ready to Participate in Early Voting?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    participateInEarlyVoting(context);
                    navigateToElectionProcedures(context); // Add this line to navigate
                  },
                  child: Text('Participate Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

