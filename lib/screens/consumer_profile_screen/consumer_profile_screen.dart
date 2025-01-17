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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                value.accountGetter!.profilePhoto == null
                                    ? const NetworkImage(
                                        'assets/images/default.png',
                                      )
                                    : NetworkImage(
                                        value.accountGetter!.profilePhoto!,
                                      ),
                            radius: 70,
                          ),
                          Positioned(
                            bottom: 4,
                            right: 4,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 1,
                                    color: Colors.grey,
                                    spreadRadius: 0.1,
                                  ),
                                ],
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  print('Upload Image');
                                },
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundColor: Colors.white,
                                  child: PhosphorIcon(PhosphorIcons.camera()),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${value.accountGetter!.firstName} ${value.accountGetter!.lastName}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'johndoe@example.com',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(160, 44),
                              ),
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Expanded(child: ConsumerProfileScreenAction()),
                  const Text('App Version...'),
                  const SizedBox(height: 20),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
