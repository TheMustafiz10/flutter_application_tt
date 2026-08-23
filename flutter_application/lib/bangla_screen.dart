import 'package:flutter/material.dart';
import 'package:flutter_application_1/poem_details_screen.dart';

class BnaglaScreen extends StatefulWidget {
  const BnaglaScreen({super.key});

  @override
  State<BnaglaScreen> createState() => _BnaglaScreenState();
}

class _BnaglaScreenState extends State<BnaglaScreen> {
  final List<Map<String, String>> bangla_poems = [
    {
      'title': 'আমার সোনার বাংলা',
      'author': 'রবীন্দ্রনাথ ঠাকুর',
      'lines':
          'আমার সোনার বাংলা, আমি তোমায় ভালোবাসি।\nচিরদিন তোমার আকাশ, তোমার বাতাস, আমার প্রাণে বাজায় বাঁশি।'
    },
    {
      'title': 'বিদ্রোহী',
      'author': 'কাজী নজরুল ইসলাম',
      'lines':
          'বল বীর -\nবল উন্নত মম শির!\nশির নেহারি আমারি, নত শির ওই শিখর হিমাদ্রির!'
    },
    {
      'title': 'বাংলার মুখ',
      'author': 'জীবনানন্দ দাশ',
      'lines':
          'বাংলার মুখ আমি দেখিয়াছি, তাই আমি পৃথিবীর রূপ খুঁজিতে যাই না আর।'
    },
    {
      'title': 'স্বাধীনতা তুমি',
      'author': 'শামসুর রাহমান',
      'lines':
          'স্বাধীনতা তুমি শব্দ তোমাকে এত সহজে পাইনি,\nতোমাকে পাওয়ার জন্যে এই কেমন মায়া, এই প্রাণপণ লড়াই!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: bangla_poems.length,
        itemBuilder: (context, index) {
          String title = bangla_poems[index]["title"].toString();
          String author = bangla_poems[index]["author"].toString();
          String lines = bangla_poems[index]["lines"].toString();

          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PoemDetailsScreen(title, author, lines),
                ),
              );
            }, 
            
            title: Text(title),
            subtitle: Text(
              '$author\n$lines',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            isThreeLine: true,
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            indent: 12,
            endIndent: 12,
            color: Colors.grey,
            thickness: 0.5,
          );
        },
      ),
    );
  }
}
