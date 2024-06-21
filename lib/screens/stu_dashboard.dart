import 'package:flutter/material.dart';
import 'package:tree/screens/chat_page.dart';
import 'package:tree/screens/resource_page.dart';
import 'package:tree/screens/gen_dashboard.dart';
import 'package:tree/screens/geo_school.dart';
import 'package:tree/screens/login_page.dart';

class StudentDashBoard extends StatefulWidget {
  const StudentDashBoard({Key? key}) : super(key: key);
  static String id = "uni_dashboard_page";

  @override
  State<StudentDashBoard> createState() => _StudentDashBoardState();
}

class _StudentDashBoardState extends State<StudentDashBoard> {
  var _selected = 0;
  var _pages = [
    GenDashBoard(),
    ResourcePage(),
    ChatPage(),
    GeoSchool(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selected = index;
    });
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xff764abc)),
              accountName: Text(
                "Laura Lahsan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "laura@uci.edu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Account'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: _pages[_selected],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: false,
        backgroundColor: Color.fromARGB(255, 42, 101, 184),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  setState(() {
                    _selected = 0;
                  });
                },
                icon: Icon(Icons.home)),
            label: 'Dashboard',
            backgroundColor: Color.fromARGB(255, 42, 101, 184),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  setState(() {
                    _selected = 1;
                  });
                },
                icon: Icon(Icons.add_circle)),
            label: 'Resources',
            backgroundColor: Color.fromARGB(255, 42, 101, 184),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  setState(() {
                    _selected = 2;
                  });
                },
                icon: Icon(Icons.chat)),
            label: 'Chats',
            backgroundColor: Color.fromARGB(255, 42, 101, 184),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  // setState(() {
                  //   _selected = 3;
                  // });
                },
                icon: Icon(Icons.notifications)),
            label: 'Notifications',
            backgroundColor: Color.fromARGB(255, 42, 101, 184),
          ),
        ],
        currentIndex: _selected,
        onTap: _onItemTapped,
      ),
    );
  }
}
