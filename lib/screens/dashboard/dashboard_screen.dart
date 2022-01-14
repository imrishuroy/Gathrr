import 'package:flutter/material.dart';
import '/screens/home/home_screen.dart';
import '/screens/notification/notification_screen.dart';
import '/screens/profile/profile_screen.dart';
import '/screens/saved/saved_screen.dart';
import 'widgets/fab_button_app_bar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SavedScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildFab(BuildContext context) {
    return SizedBox(
      height: 65.0,
      width: 65.0,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 35.0,
          ),
          elevation: 2.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: Colors.black,
        // centerItemText: 'New Round',
        color: Colors.grey,
        selectedColor: Colors.white,
        notchedShape: const CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.show_chart, text: 'Locker\nRoom'),
          FABBottomAppBarItem(
              iconData: Icons.play_lesson_outlined, text: 'Range'),
          FABBottomAppBarItem(iconData: Icons.explore, text: 'Explore'),
          FABBottomAppBarItem(iconData: Icons.sports_golf, text: 'Golfer'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(context),
    );
  }
}
