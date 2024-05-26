import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _isSelected = 0;
  void changeIndex(int index) {
    setState(() {
      _isSelected = index;
    });
  }

  static const List<Widget> _widgetList = <Widget>[
    Text("Home"),
    Text("Search"),
    Text("Ticket"),
    Text("Profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetList[_isSelected],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _isSelected,
          onTap: changeIndex,
          elevation: 16,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.grey,
          // backgroundColor: Colors.white30,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                activeIcon:
                    Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                label: "Profile"),
          ],
        ));
  }
}
