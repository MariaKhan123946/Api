import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'early voting.dart';

void main() {
  runApp(MyApp());
}

class Candidate {
  final String name;
  final String party;
  final String position;

  Candidate({required this.name, required this.party, required this.position});

  factory Candidate.fromJson(Map<String, dynamic> json) {
    return Candidate(
      name: json['name'],
      party: json['party'],
      position: json['position'],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Candidate Research App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Candidate> candidates = []; // Initialize as an empty list

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('YOUR_API_ENDPOINT'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      candidates = data.map((candidate) => Candidate.fromJson(candidate)).toList();
      setState(() {});
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Add a function to check voting eligibility
  bool isVotingEligible() {
    // Add your logic to determine voting eligibility
    // For example, check age, citizenship, etc.
    return true;
  }

  // Function to navigate to the "Participate in Early Morning" screen
  void navigateToParticipateInEarlyMorning() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EarlyVotingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Candidate Research'),
        actions: [
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {
              navigateToParticipateInEarlyMorning();
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
                image: AssetImage('images/images (30).jpg'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 16),
          // Check Voting Eligibility Section
          Text(
            'Voting Eligibility:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            isVotingEligible() ? 'You are eligible to vote!' : 'You are not eligible to vote.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          // Candidate List Section
          Expanded(
            child: candidates.isNotEmpty
                ? ListView.builder(
              itemCount: candidates.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      candidates[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('${candidates[index].party} - ${candidates[index].position}'),
                  ),
                );
              },
            )
                : Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

