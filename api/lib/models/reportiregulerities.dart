import 'package:flutter/material.dart';

import 'respectscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report Irregularities App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReportIrregularitiesScreen(),
    );
  }
}

class ReportIrregularitiesScreen extends StatefulWidget {
  @override
  _ReportIrregularitiesScreenState createState() => _ReportIrregularitiesScreenState();
}

class _ReportIrregularitiesScreenState extends State<ReportIrregularitiesScreen> {
  TextEditingController _issueController = TextEditingController();

  // Function to submit the report
  void submitReport(BuildContext context) {
    // Add your logic to submit the report
    String issueDetails = _issueController.text;

    // You can send the issueDetails to the relevant authorities or perform other actions

    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Report Submitted'),
          content: Text('Thank you for reporting the irregularity!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigate to RespectOthersScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RespectOthersScreen()),
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Irregularities'),
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
                  image: AssetImage('images/download (28).png'), // Replace with your image asset
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
                    'Report Irregularities',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'If you observe any irregularities at the polling station, please report them below.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _issueController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'Details of Irregularity',
                      hintText: 'Enter details here...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      submitReport(context);
                    },
                    child: Text('Submit Report'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


