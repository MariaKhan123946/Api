import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  final String partyName;
  final String history;
  final String date;
  final String imagePath;

  HistoryScreen({
    required this.partyName,
    required this.history,
    required this.date,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History of $partyName'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 150, // Adjust the height as needed
              width: double.infinity, // Take full width
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              '''Imran Khan has been ousted as Pakistan's prime minister after a vote of no confidence in parliament. But what led to his downfall?

When Imran Khan was elected prime minister in 2018, he seemed to have almost everything in his favour.

A national hero from his cricketing days, he had transformed into a charismatic politician and, after years of struggle, managed to supplant the two rival established political dynasties that had dominated Pakistan for decades.

He emerged as a fresh force, with vibrant rallies full of catchy songs which, along with his huge social media presence, amplified his staunch anti-corruption message. Mr Khan promised to bring "change" to the country, creating a "new Pakistan".

No prime minister has ever completed a full five-year parliamentary tenure in Pakistan, and Imran Khan looked as though he could well be the first.

The reason his position appeared so secure, however, also helps explain his downfall. Both sides deny it, but it's widely acknowledged he came to power with the help of Pakistan's powerful army and intelligence services - and now he has fallen out with themMr Khan undoubtedly had significant, genuine public support in 2018.

But he also had the covert backing of what in Pakistan is referred to as "the establishment" or the military. The army has either directly or indirectly controlled the country for most of its existence, and critics labelled Imran Khan's government a "hybrid regime".

The support for Mr Khan exemplified itself in a host of different ways. During the 2018 election campaign, media outlets reporting sympathetically on his opponents had their distribution curtailed, while some candidates standing for election were either cajoled or coerced into joining his party.

"He was made by them," one defecting member of Imran Khan's party told the BBC, referring to the military. "They were the ones that brought him into power.".
''',
              style: TextStyle(fontSize: 5),
            ),
            SizedBox(width: 5,),
            Wrap(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(width: 8),
                Text(
                  "Imran Khan is a great leader! We express our continued support for Imran Khan and his vision for a 'New Pakistan'. Despite facing challenges, we believe in his dedication to fighting corruption and bringing positive change to the country.",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
