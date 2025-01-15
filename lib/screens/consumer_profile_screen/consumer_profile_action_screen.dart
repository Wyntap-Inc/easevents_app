import 'package:easevents_app/exports.dart';

class ConsumerProfileActionScreen extends StatelessWidget {
  const ConsumerProfileActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, PhosphorIconData> profileActions = {
      'Dark Mode': PhosphorIcons.sun(),
      'Favourites': PhosphorIcons.heart(),
      'Notifications': PhosphorIcons.bell(),
      'Security': PhosphorIcons.shield(),
      'Language': PhosphorIcons.globeHemisphereWest(),
      'Rate Us': PhosphorIcons.star(),
      'Privacy and Policy': PhosphorIcons.info(),
      'Log out': PhosphorIcons.signOut(),
    };
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: profileActions.entries.map((action) {
          return InkWell(
            onTap: () async {
              if (action.key == 'Log out') {
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  action.key != 'Log out'
                      ? PhosphorIcon(
                          action.value,
                        )
                      : PhosphorIcon(
                          PhosphorIcons.signOut(),
                          color: EVStyles.errorBorderSideColor,
                        ),
                  const SizedBox(width: 15),
                  Text(
                    action.key,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: EVStyles.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Spacer(),
                  action.key != 'Log out'
                      ? PhosphorIcon(
                          PhosphorIcons.caretRight(),
                          color: EVStyles.textPrimary,
                          size: 18,
                        )
                      : Container()
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
