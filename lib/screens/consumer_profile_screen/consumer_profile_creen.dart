import 'package:easevents_app/exports.dart';

class ConsumerProfileScreen extends StatelessWidget {
  const ConsumerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final loader = Provider.of<LoaderProvider>(context);

    Future.microtask(() {
      if (context.mounted) {
        Provider.of<ConsumerLoginAccountProvider>(context, listen: false)
            .loadConsumerAccountData();
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Consumer<ConsumerLoginAccountProvider>(
        builder: (_, value, __) {
          if (value.accountGetter == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SafeArea(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: EVStyles.primaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: EVStyles.backgroundSecondary,
                            child: CircleAvatar(
                              radius: 57,
                              backgroundImage:
                                  value.accountGetter!.profilePhoto == null
                                      ? const NetworkImage(
                                          'assets/images/default.png',
                                        )
                                      : NetworkImage(
                                          value.accountGetter!.profilePhoto!,
                                        ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 2,
                          right: 3,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: EVStyles.primaryWhite,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: EVStyles.primaryLiteColor,
                                    offset: Offset.zero,
                                    spreadRadius: 0.2,
                                  ),
                                ],
                              ),
                              child: PhosphorIcon(
                                PhosphorIcons.camera(),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.sp),
                    Text(
                      '${value.accountGetter!.firstName} ${value.accountGetter!.lastName}',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: EVStyles.textPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    for (var contact in value.accountGetter!.contacts)
                      Text(
                        contact.value,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: EVStyles.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(160, 44),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Edit Profile',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: EVStyles.primaryWhite,
                            ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Expanded(child: ConsumerProfileActionScreen()),
                    Text(
                      'App version...',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: EVStyles.textSecondary),
                    ),
                    const SizedBox(height: 20),
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
