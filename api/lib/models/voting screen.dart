import 'package:flutter/material.dart';
import 'candidate.dart';
import 'candidate_screen.dart';

class ItemModel {
  final String name;
  final String imagePath;
  final String votingHistory;
  final String date;

  ItemModel({
    required this.name,
    required this.imagePath,
    required this.votingHistory,
    required this.date,
  });
}

class VotingScreen extends StatefulWidget {
  const VotingScreen({Key? key}) : super(key: key);

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  final List<ItemModel> itemList = [
    ItemModel(name: "PPP", imagePath: "images/gettyimages-1879910883-612x612.jpg", votingHistory: "The People's Party has been voted into power on five separate occasions (1970, 1977, 1988, 1993 and 2008), while on four occasions (1990, 1997, 2002 and 2013) it emerged as the largest opposition party. There have been a total of four prime ministers from the PPP.",date: "2/8/2024"),
    ItemModel(name: "PMLN", imagePath: "images/images (23).jpg", votingHistory: "Nawaz Sharif, Pakistani businessman, politician, and three-time prime minister (1990–93, 1997–98, 2013–17). He was ousted in a military coup during his ...25-Jul-2018 — Shahbaz Sharif (center), the younger brother of ousted Pakistani Prime Minister Nawaz Sharif, casts his vote in the general elections. The head ...",date: "2/8/2024"),
    ItemModel(name: "HKP", imagePath: "images/download (34).jpg", votingHistory: "The landmark Voting Rights Act of 1965 passed by Congress took major steps to curtail voter suppression. Thus began a new era of push-and-pull on voting rights, ...",date: "2/8/2024"),
    ItemModel(name: "ANP", imagePath: "images/images (24).jpg", votingHistory: "The Awami National Party is a Pashtun nationalist, secular and leftist political party in Pakistan. The party was founded by Abdul Wali Khan in 1986 and its ...",date: "2/8/2024"),
    ItemModel(name: "MQM", imagePath: "images/download (35).jpg", votingHistory: "26-Jun-2018 — KARACHI: Yousuf Ahmed, a resident of Gulshan-e-Iqbal Karachi, is not going to exercise his right to vote in the general elections and he is ...",date: "2/8/2024"),
    ItemModel(name: "PTI", imagePath: "images/download (36).jpg", votingHistory: "General elections were held in Pakistan on Wednesday, 25 July 2018 to elect the members of 15th National Assembly and the four Provincial Assemblies.24-Dec-2023 — On December 22, the Election Commission of Pakistan declared Pakistan Tehreek-e-Insaaf's (PTI) intra-party election null and void, leading to ...Pakistan Tehreek-e-Insaf (PTI) (Urdu: پاکستان تحريک انصاف; Pakistan Movement for Justice) is a political party in Pakistan, founded in 1996 by former ...",date: "2/8/2024"),
    ItemModel(name: "JI", imagePath: "images/download (37).jpg", votingHistory: "General elections were held in Pakistan on 7 December 1970 to elect members of the National Assembly. They were the first direct general elections since the ...",date: "2/8/2024"),
    ItemModel(name: "TLP", imagePath: "images/download (38).jpg", votingHistory: "This section contains comprehensive information about political parties which took part in general elections since 1970. The details include party flags, ...",date: "2/8/2024"),
    ItemModel(name: "Awp", imagePath: "images/download (39).jpg", votingHistory: "This section contains comprehensive information about political parties which took part in general elections since 1970. The details include party flags, ...",date: "2/8/2024"),
    ItemModel(name: "PKMAP", imagePath: "images/download (41).jpg", votingHistory: "In 2002, PkMAP secured one NA seat and three provincial assembly seats. The party won two provincial seats in the 1997 polls. It won three NA seats and four provincial seats in 1993. Prior to this, in the 1990 elections, PkMAP won three provincial assembly seats.",date: "2/8/2024"),
    ItemModel(name: "IPP", imagePath: "images/download (42).jpg", votingHistory: "04-Oct-2023 — LAHORE: The newly-established Istehkam-e-Pakistan Party will have to go extra mile to win seats in Punjab in the upcoming general elections ...",date: "2/8/2024"),
    ItemModel(name: "GDA", imagePath: "images/images (25).jpg", votingHistory: "Party Name, Grand Democratic Alliance (GDA). Founder, Syed Sibghatullah Shah Rashdi, Pir Pagara-III. Date/Year Founded, 2017. Geographic Focus, Sindh.",date: "2/8/2024"),
    ItemModel(name: "GUI-F", imagePath: "images/download (43).jpg", votingHistory: "Party Name, Grand Democratic Alliance (GDA). Founder, Syed Sibghatullah Shah Rashdi, Pir Pagara-III. Date/Year Founded, 2017. Geographic Focus, Sindh.",date: "2/8/2024"),
    ItemModel(name: "BAP", imagePath: "images/download (44).jpg", votingHistory: "The Balochistan Awami Party (Urdu: بلوچستان عوامی پارٹی, lit. 'Balochistan People's Party') (Balochi: پناه کتن ـشمارهi) is a political party based in the ...03-Dec-2023 — Rajasthan Elections Results 2023: Rajkumar Roat, founder of the recently formed Bharat Adivasi Party (BAP), has won the Chorasi seat in the ...",date: "2/8/2024"),


// Add more items...
  ];
    // Add your ItemModels here...

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/images (21).jpg',
                fit: BoxFit.cover,
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('images/images (8).png'),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  // Navigate to the next screen when the icon is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VoterRegistrationScreen (),
                    ),
                  );
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pakistan Election 2024',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Mapping Political Parties',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildListItem(itemList[index]);
              },
              childCount: itemList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(ItemModel item) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          _navigateToHistoryScreen(item.name);
        },
        child: Card(
          elevation: 3,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(item.imagePath),
            ),
            title: Text(item.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.votingHistory),
                Text(item.date),
              ],
            ),
            trailing: Text(''),
          ),
        ),
      ),
    );
  }

  void _navigateToHistoryScreen(String partyName) {
    // Here you can add logic to determine which history screen to navigate to based on the party name
    if (partyName == "PTI") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HistoryScreen(
            partyName: partyName,
            history: "PTI's history details...",
            date: '',
            imagePath: 'images/images (26).jpg',
          ),
        ),
      );
    } else if (partyName == "PMLN") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HistoryScreen(
            partyName: partyName,
            history: "PMLN's history details...",
            date: '8/4/ 2024',
            imagePath: 'images (29).jpg',
          ),
        ),
      );
    }
  }
}



void main() {
  runApp(MaterialApp(
    home: VotingScreen(),
  ));
}
