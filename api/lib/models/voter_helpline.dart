import 'package:flutter/material.dart';
import 'electin.dart';

class VoterHelplineScreen extends StatefulWidget {
  @override
  _VoterHelplineScreenState createState() => _VoterHelplineScreenState();
}

class _VoterHelplineScreenState extends State<VoterHelplineScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voter Helpline'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // Image at the top of the screen
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/images (12).png'), // Replace with your image asset
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
                    'Contact Voter Helpline',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: _nameController,
                            decoration: InputDecoration(labelText: 'Your Name'),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(labelText: 'Phone Number'),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              _submitMessage();
                            },
                            child: Text('Submit'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitMessage() {
    String name = _nameController.text;
    String phone = _phoneController.text;

    // Validate input
    if (name.isEmpty || phone.isEmpty) {
      _showErrorMessage('Please fill in all fields');
      return;
    }

    // You can add logic here to send the message (e.g., API call, email, etc.)

    // Show a confirmation dialog or navigate to another screen
    _showSubmissionConfirmation();
  }

  void _showSubmissionConfirmation() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Message Submitted'),
          content: Text('Thank you for reaching out to the Voter Helpline!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the confirmation dialog
                _navigateToNextScreen(); // Navigate to the next screen
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _navigateToNextScreen() {
    // Navigate to the next screen using Navigator.push
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }
}
