import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class Candidate {
  final String name;
  final String party;
  final String position;
  final String description;
  final List<String> history;
  Candidate({
    required this.name,
    required this.party,
    required this.position,
    required this.description,
    required this.history,
  });
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Election Candidate App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CandidateScreen(),
    );
  }
}
class CandidateScreen extends StatelessWidget {
  final List<Candidate> candidates = [
    Candidate(
      name: 'IKramMahar',
      party: 'PTI',
      position: 'MNA',
      description: 'Committed to economic reforms and individual liberties.',
      history: [
        'Championed economic reforms in previous legislative roles',
        'Advocates for individual liberties and freedom',
      ],
    ),
    Candidate(
      name: 'Imran mahar',
      party: 'PTI',
      position: 'MNA',
      description: 'Environmental advocate with a focus on sustainable development.',
      history: [
        'Led environmental initiatives in the state as Mayor',
        'Promotes sustainable development and green policies',
      ],
    ),
    Candidate(
      name: 'Ahmed bhai',
      party: 'PTI',
      position: 'MNA',
      description: 'Dedicated to social justice and healthcare accessibility.',
      history: [
        'Sponsored bills for social justice and equality',
        'Advocates for improved healthcare accessibility',
      ],
    ),
    Candidate(
      name: 'Aurhan Mahar',
      party: 'PTI',
      position: 'MNA',
      description: 'Focused on fiscal responsibility and community safety.',
      history: [
        'Balanced budgets and reduced municipal debt as City Treasurer',
        'Implemented community safety initiatives as Police Commissioner',
      ],
    ),
    Candidate(
      name: 'Toheed Mahar',
      party: 'PTI',
      position: 'MNA',
      description: 'Community-oriented leader with a passion for local development.',
      history: [
        'Founded a local community improvement organization',
        'Served as a City Council Member with a focus on infrastructure projects',
      ],
    ),
    Candidate(
      name: 'AbuBaker',
      party: 'PTI',
      position: "MNA",
      description: 'Advocating for quality education and student welfare.',
      history: [
        'Initiated programs for enhancing educational standards',
        'Worked on improving student welfare in previous roles',
      ],
    ),
    Candidate(
      name: 'bhai sajid',
      party: 'AZAD',
      position: 'MNA',
      description: 'Experienced leader with a focus on community development.',
      history: [
        'Served as Mayor from 2010 to 2016',
        'Initiated multiple community development projects',
      ],
    ),
    Candidate(
      name: 'Jasim',
      party: 'PTI',
      position: 'MNA',
      description: 'Passionate about education and social equality.',
      history: [
        'Founded an education-focused non-profit organization',
        'Advocated for social equality in previous political roles',
      ],
    ),
    // Add more candidates as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Candidates'),
      ),
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(candidates[index].name),
            subtitle: Text('${candidates[index].party} - ${candidates[index].position}'),
            onTap: () {
              // Navigate to CandidateDetailsScreen when a candidate is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CandidateDetailsScreen(candidate: candidates[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CandidateDetailsScreen extends StatelessWidget {
  final Candidate candidate;

  CandidateDetailsScreen({required this.candidate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(candidate.name),
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
                  image: AssetImage('images/240_F_254815998_bWkAUS74nf451w8edmjg0B6m1SfkOGTq.jpg'), // Replace with the actual path for the candidate's image
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
                    'Election: 2/8/2024', // Replace with the actual election name
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Party: ${candidate.party}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Position: ${candidate.position}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Description:It is not surprising that candidate character received considerable attention in the 2004 presidential election. Many analyses of recent presidential elections ...',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${candidate.description}',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Candidate History:Early Voting in Ancient Greece. Since approximately 508 B.C., Ancient Greece seems to have implemented the earliest form of democracy.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Display candidate history as cards
                  for (String historyItem in candidate.history)
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(historyItem),
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
}
