// voter_registration.dart
import 'package:flutter/material.dart';

import 'voter_helpline.dart';

class VoterRegistrationScreen extends StatefulWidget {
  @override
  _VoterRegistrationScreenState createState() => _VoterRegistrationScreenState();
}

class _VoterRegistrationScreenState extends State<VoterRegistrationScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _partyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voter Registration'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              _navigateToNextScreen();
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          // Add your background image here
          image: DecorationImage(
            image: AssetImage('images/download (47).jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/download (27).png'), // Replace with your circular avatar image path
              ),
              SizedBox(height: 16),
              Card(
                color: Colors.white38, // Change the color as needed
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _nameController,
                        decoration: InputDecoration(labelText: 'Your Name'),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        controller: _partyController,
                        decoration: InputDecoration(labelText: 'Preferred Party'),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          _registerVoter();
                        },
                        child: Text('Register Voter'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _registerVoter() {
    // You can add logic here to handle voter registration
    String name = _nameController.text;
    String party = _partyController.text;

    // Perform validation and registration logic

    // Show a confirmation dialog or navigate to another screen
    _showRegistrationConfirmation();
  }

  void _showRegistrationConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Voter Registration Successful'),
          content: Text('Thank you for registering as a voter!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _navigateToNextScreen();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToNextScreen() {
    // Use Navigator to push the next screen
    // Replace YourNextScreen with the actual screen you want to navigate to
    Navigator.push(context, MaterialPageRoute(builder: (context) => VoterHelplineScreen ()));
  }
}
