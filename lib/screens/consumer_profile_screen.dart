import 'package:easevents_app/exports.dart';

class ConsumerProfileScreen extends StatelessWidget {
  const ConsumerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loader = Provider.of<LoaderProvider>(context);

    Future.microtask(() {
      if (context.mounted) {
        Provider.of<ConsumerLoginAccountProvider>(context, listen: false)
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
      body: Consumer<ConsumerLoginAccountProvider>(
        builder: (_, value, __) {
          if (value.accountGetter == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 10, right: 24),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  value.accountGetter!.profilePhoto == null
                                      ? const NetworkImage(
                                          'assets/images/default.png')
                                      : NetworkImage(
                                          value.accountGetter!.profilePhoto!),
                            ),
                            Positioned(
                              top: 70,
                              right: 5,
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: Colors.grey.shade100,
                                child: PhosphorIcon(
                                  size: 24,
                                  PhosphorIcons.camera(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' ${value.accountGetter!.firstName} ${value.accountGetter!.lastName}',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              'Johndoe@gmail.com',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: Colors.grey,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 3,
                                horizontal: 30,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF0A3C26),
                                borderRadius:
                                    BorderRadiusDirectional.circular(4),
                              ),
                              child: InkWell(
                                child: Text(
                                  'Edit',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 12,
                      onTap: () {},
                      leading: PhosphorIcon(
                        PhosphorIcons.user(),
                        size: 24,
                        color: const Color(0xFF0A3C26),
                      ),
                      minTileHeight: 30,
                      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                      title: const Text('Personal Information'),
                      trailing: PhosphorIcon(
                        size: 18,
                        PhosphorIcons.caretRight(),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 12,
                      onTap: () {},
                      minTileHeight: 30,
                      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                      trailing: PhosphorIcon(
                        size: 18,
                        PhosphorIcons.caretRight(),
                      ),
                      leading: PhosphorIcon(
                        PhosphorIcons.bell(),
                        size: 26,
                        color: const Color(0xFF0A3C26),
                      ),
                      title: const Text('Notifications'),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () {},
                      trailing: PhosphorIcon(
                        size: 18,
                        PhosphorIcons.caretRight(),
                      ),
                      minTileHeight: 30,
                      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                      leading: PhosphorIcon(
                        PhosphorIcons.shield(),
                        size: 26,
                        color: const Color(0xFF0A3C26),
                      ),
                      title: const Text('Login and Security'),
                    ),
                    ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 30,
                      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                      trailing: PhosphorIcon(
                        size: 18,
                        PhosphorIcons.caretRight(),
                      ),
                      leading: PhosphorIcon(
                        PhosphorIcons.headset(),
                        size: 26,
                        color: const Color(0xFF0A3C26),
                      ),
                      title: const Text('Customer Support'),
                    ),
                    ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 30,
                      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                      trailing: PhosphorIcon(
                        size: 18,
                        PhosphorIcons.caretRight(),
                      ),
                      leading: PhosphorIcon(
                        PhosphorIcons.translate(),
                        size: 26,
                        color: const Color(0xFF0A3C26),
                      ),
                      title: const Text('Language'),
                    ),
                    ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 30,
                      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                      trailing: PhosphorIcon(
                        size: 18,
                        PhosphorIcons.caretRight(),
                      ),
                      leading: PhosphorIcon(
                        PhosphorIcons.gear(),
                        size: 26,
                        color: const Color(0xFF0A3C26),
                      ),
                      title: const Text('Setting'),
                    ),
                    ListTile(
                      onTap: () async {
                        await loader.loader();

                        final token = LocalStorageManager();
                        await token.clearUserData();

                        if (context.mounted) {
                          Navigator.of(context).popAndPushNamed('/');
                        }
                      },
                      contentPadding: EdgeInsets.zero,
                      minTileHeight: 30,
                      titleTextStyle: Theme.of(context).textTheme.bodyMedium,
                      leading: PhosphorIcon(
                        PhosphorIcons.signOut(),
                        size: 26,
                        color: const Color(0xFF0A3C26),
                      ),
                      title: const Text('Logout'),
                    ),
                    const Spacer(),
                    Text(
                      'App Version...',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.grey.shade500,
                          ),
                    )
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
