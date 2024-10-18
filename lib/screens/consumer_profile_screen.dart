import 'package:easevents_app/exports.dart';

class ConsumerProfileScreen extends StatelessWidget {
  const ConsumerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loader = Provider.of<LoaderProvider>(context);

    Future.microtask(() {
      if (context.mounted) {
        Provider.of<ConsumerAccountProvider>(context, listen: false)
            .loadConsumerAccountData();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: EVStyles.primaryColor,
          ),
        ),
      ),
      body: Consumer<ConsumerAccountProvider>(
        builder: (_, value, __) {
          if (value.accountGetter == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 80,
                            backgroundImage:
                                value.accountGetter!.profilePhoto == null
                                    ? const NetworkImage(
                                        'assets/images/default.png',
                                      )
                                    : NetworkImage(
                                        value.accountGetter!.profilePhoto!,
                                      ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            '${value.accountGetter!.firstName} ${value.accountGetter!.lastName}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text('Privacy'),
                            icon: const Icon(Icons.account_circle),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text('Settings'),
                            icon: const Icon(Icons.alternate_email_rounded),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text('Help & Support'),
                            icon: const Icon(Icons.circle_notifications),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            label: const Text('Invite a Friend'),
                            icon: const Icon(Icons.help),
                          ),
                          TextButton.icon(
                            onPressed: () async {
                              await loader.loader();

                              final token = LocalStorageManager();
                              await token.clearUserData();

                              if (context.mounted) {
                                Navigator.of(context).popAndPushNamed('/');
                              }
                            },
                            label: const Text('Signout'),
                            icon: const Icon(Icons.help),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
