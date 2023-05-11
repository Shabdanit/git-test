import 'package:flutter/material.dart';
import 'package:shedule/main.dart';
import 'package:shedule/pages/monday_page.dart';
import 'package:shedule/pages/schedule_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List pages = [
    SchedulePage(),
    // MondayPage(),
  ];

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.calendar_month),
            label: 'schedule',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.notifications),
            label: 'notification',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.contacts_outlined),
            label: 'contacts',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
        onTap: (index){setState(() {
          _currentIndex = index;
        });},
      ),

    );
  }
}
