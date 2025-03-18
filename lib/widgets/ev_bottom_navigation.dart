import 'package:easevents_app/exports.dart';

class EVBottomNavigationBar extends StatefulWidget {
  const EVBottomNavigationBar({super.key});

  static const routeName = 'evBottomNav';

  @override
  State<EVBottomNavigationBar> createState() => _EVBottomNavigationBarState();
}

class _EVBottomNavigationBarState extends State<EVBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const BrowseVendorsScreen(),
      const ComingSoonScreen(),
      const ConversationListScreen(),
      const ConsumerProfileScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        elevation: 1,
        height: 70,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        labelTextStyle:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              fontWeight: FontWeight.bold,
              color: EVStyles.primaryColor,
            );
          }
          return const TextStyle(fontWeight: FontWeight.normal);
        }),
        destinations: [
          NavigationDestination(
            icon: Image.asset(
              selectedIndex == 0
                  ? 'assets/icons/home_filled.png'
                  : 'assets/icons/home_outlined.png',
              width: 20,
              height: 20,
              color: EVStyles.primaryColor,
            ),
            // color: EVStyles.primaryColor,
            // size: 20,
            label: 'Home',
          ),
          NavigationDestination(
            icon: Image.asset(
              selectedIndex == 1
                  ? 'assets/icons/bookmarks_filled.png'
                  : 'assets/icons/bookmarks_outlined.png',
              width: 20,
              height: 20,
              color: EVStyles.primaryColor,
            ),
            // color: EVStyles.primaryColor,
            // size: 20,
            label: 'Bookmarks',
          ),
          NavigationDestination(
            icon: Image.asset(
              selectedIndex == 2
                  ? 'assets/icons/message_filled.png'
                  : 'assets/icons/message_outlined.png',
              width: 22,
              height: 22,
              color: EVStyles.primaryColor,
            ),
            // color: EVStyles.primaryColor,
            // size: 20,
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Image.asset(
              selectedIndex == 3
                  ? 'assets/icons/user_filled.png'
                  : 'assets/icons/user_outlined.png',
              width: 22,
              height: 22,
              color: EVStyles.primaryColor,
            ),
            // color: EVStyles.primaryColor,
            // size: 20,
            label: 'Profile',
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
