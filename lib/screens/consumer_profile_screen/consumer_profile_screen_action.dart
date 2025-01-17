import 'package:easevents_app/exports.dart';

class ConsumerProfileScreenAction extends StatelessWidget {
  ConsumerProfileScreenAction({super.key});

  final Map<String, IconData> profileActions = {
    'Favourites': Icons.favorite,
    'Downloads': Icons.download,
    'Language': Icons.language,
    'Location': Icons.location_on,
    'Display': Icons.display_settings,
    'Feeds': Icons.rss_feed,
    'Subscription': Icons.subscriptions,
    'Clear Cache': Icons.delete_forever,
    'Clear History': Icons.history,
    'Log Out': Icons.logout,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: profileActions.entries
          .map(
            (action) => InkWell(
              onTap: () async {
                if (action.key == 'Log Out') {
                  final token = LocalStorageManager();
                  await token.clearUserData();

                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Logging out...'),
                        duration: Duration(milliseconds: 500),
                      ),
                    );
                  }

                  await Future.delayed(const Duration(milliseconds: 1500))
                      .then((_) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('User Logged Out'),
                          duration: Duration(milliseconds: 1000),
                        ),
                      );
                    }
                  });

                  if (context.mounted) {
                    Navigator.of(context).popAndPushNamed('/');
                  }
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    action.key != 'Log Out'
                        ? PhosphorIcon(action.value)
                        : PhosphorIcon(
                            action.value,
                            color: Colors.red,
                          ),
                    const SizedBox(width: 16),
                    Text(
                      action.key,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 65, 65, 65),
                      ),
                    ),
                    const Spacer(),
                    action.key != 'Log Out'
                        ? PhosphorIcon(
                            PhosphorIcons.caretRight(),
                            size: 18,
                            color: Colors.black,
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
