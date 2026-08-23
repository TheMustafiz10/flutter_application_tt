
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bangla_screen.dart';
import 'package:flutter_application_1/english_screen.dart';

class BottonNavBarScreen extends StatefulWidget {
  const BottonNavBarScreen({super.key});

  @override
  State<BottonNavBarScreen> createState() => _BottonNavBarScreenState();
}

class _BottonNavBarScreenState extends State<BottonNavBarScreen> {
  List<Widget> pages = [BnaglaScreen(), EnglishScreen()];
  int init_index = 0;


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.brown,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.book_rounded, size: 80, color: Colors.white,), 
                  Text("Version 0.1", style: TextStyle(color: Colors.white),)

                ],
              ),           

            ),
            SizedBox(height: 20),

            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.home), title: Text("Home"), trailing: Icon(Icons.arrow_forward_ios_outlined),),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings"), trailing: Icon(Icons.arrow_forward_ios_outlined),),
            ListTile(leading: Icon(Icons.info), title: Text("About"), trailing: Icon(Icons.arrow_forward_ios_outlined),)
          

          ],
        ),
      ),



      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            init_index = index;
          });
        },
        currentIndex: init_index,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Bangla"),
          BottomNavigationBarItem(icon: Icon(Icons.book_online_outlined), label: "English")
        ],
      ),



      body: pages[init_index],
    );
  }
}
