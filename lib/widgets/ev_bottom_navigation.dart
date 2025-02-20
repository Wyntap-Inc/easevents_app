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
        height: 60,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              PhosphorIconsRegular.house,
              color: EVStyles.primaryColor,
              size: 20,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              PhosphorIconsRegular.bookmarks,
              color: EVStyles.primaryColor,
              size: 20,
            ),
            label: 'Bookmarks',
          ),
          NavigationDestination(
            icon: Icon(
              PhosphorIconsRegular.chatCircleDots,
              color: EVStyles.primaryColor,
              size: 20,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              PhosphorIconsRegular.user,
              color: EVStyles.primaryColor,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
