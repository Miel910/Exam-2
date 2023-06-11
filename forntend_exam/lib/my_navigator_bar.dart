import 'package:flutter/material.dart';
import 'package:weather_api/Styles/app_styles.dart';
import 'Screens/home_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Text("Orders"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
                color: Color.fromARGB(255, 226, 226, 226), width: 1.0),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: Styles.primaryColor),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          backgroundColor: Colors.white,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: (_selectedIndex == 0)
                            ? Styles.primaryColor
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(14)),
                    child: const Icon(
                      Icons.local_dining_rounded,
                      size: 25,
                    )),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: (_selectedIndex == 1)
                          ? Styles.primaryColor
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(14)),
                  child: const Icon(
                    Icons.format_list_bulleted_rounded,
                    size: 25,
                  ),
                ),
                label: "Orders"),
            BottomNavigationBarItem(
                icon: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: (_selectedIndex == 2)
                          ? Styles.primaryColor
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(14)),
                  child: const Icon(
                    Icons.person_outline_rounded,
                    size: 25,
                  ),
                ),
                label: "Orders"),
          ],
        ),
      ),
    );
  }
}
