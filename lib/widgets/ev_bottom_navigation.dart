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
        destinations: const [
          NavigationDestination(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedHome01,
              color: EVStyles.primaryColor,
              size: 20,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedAllBookmark,
              color: EVStyles.primaryColor,
              size: 20.0,
            ),
            label: 'Bookmarks',
          ),
          NavigationDestination(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedBubbleChat,
              color: EVStyles.primaryColor,
              size: 22.0,
            ),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: HugeIcon(
              icon: HugeIcons.strokeRoundedUserCircle02,
              color: EVStyles.primaryColor,
              size: 24.0,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
