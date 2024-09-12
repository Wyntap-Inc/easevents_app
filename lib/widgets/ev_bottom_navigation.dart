import 'package:easevents_app/screens/browse_vendor/browse_vendor_screen.dart';
import 'package:easevents_app/screens/coming_soon_screen.dart';
import 'package:easevents_app/screens/chat/chat_list_screen.dart';
import 'package:easevents_app/exports.dart';

class EVBottomNavigationBar extends StatefulWidget {
  const EVBottomNavigationBar({super.key});

  static const routeName = 'evBottomNav';

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
      const BrowseVendorScreen(),
      const ComingSoonScreen(),
      const ConversationListScreen(),
      const ConsumerProfileScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
        child: BottomNavigationBar(
          elevation: 2,
          onTap: onSelectedIndex,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.house(),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.bookmarks(),
              ),
              label: 'Bookmarks',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.chatCircleText(),
              ),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                PhosphorIcons.user(),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: pages.elementAt(selectedIndex),
    );
  }
}
