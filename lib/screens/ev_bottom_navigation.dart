import 'package:easevents_app/screens/coming_soon_screen.dart';
import 'package:easevents_app/screens/ev_providers/ev_providers_screen.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EVBottomNavigationBar extends StatefulWidget {
  const EVBottomNavigationBar({super.key});

  @override
  State<EVBottomNavigationBar> createState() => _EVBottomNavigationBarState();
}

class _EVBottomNavigationBarState extends State<EVBottomNavigationBar> {
  int selectedIndex = 0;

  void onSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List pages = [
      const EVProvidersScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onSelectedIndex,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.house()),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.bookmarks()),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.clockCounterClockwise()),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.user()),
            label: 'Profile',
          ),
        ],
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
