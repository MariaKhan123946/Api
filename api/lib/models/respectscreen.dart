import 'package:flutter/material.dart';

import 'showresult.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Respect Others\' Perspectives',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RespectOthersScreen(),
    );
  }
}

class RespectOthersScreen extends StatelessWidget {
  // Function to simulate engaging in a constructive conversation
  void engageInConversation(BuildContext context) {
    // Add your logic for engaging in a conversation here
    // For example, you can navigate to a conversation screen or perform an action
    // In this example, it shows a simple confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Engaging in Conversation'),
          content: Text('You are now engaging in a constructive conversation!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                _navigateToCandidateScreen(context); // Navigate to the CandidateScreen
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToCandidateScreen(BuildContext context) {
    // Add your logic for navigating to the CandidateScreen here
    // For example, you can use Navigator.push to navigate to the CandidateScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CandidateScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Respect Others\' Perspectives'),
      ),
      body: Column(
        children: [
          Container(
            // Image at the top of the screen
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/images (34).jpg'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Respect Others\' Perspectives',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Elections can be emotionally charged. Respect others\' opinions and engage in constructive conversations, even if there are differing viewpoints.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    engageInConversation(context);
                  },
                  child: Text('Engage in Conversation'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


