import 'package:easevents_app/exports.dart';

class BrowseVendorsScreen extends StatelessWidget {
  const BrowseVendorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future:
              Provider.of<ConsumerLoginAccountProvider>(context, listen: false)
                  .loadConsumerAccountData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return const Center(
                child: Text('Please Reload The App'),
              );
            }

            return Consumer<ConsumerLoginAccountProvider>(
              builder: (__, value, _) {
                return NestedScrollView(
                  headerSliverBuilder: (context, indexBoxIsScrolled) => [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      title: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage:
                                value.accountGetter!.profilePhoto == null
                                    ? const NetworkImage(
                                        'assets/images/default.png',
                                      )
                                    : NetworkImage(
                                        value.accountGetter!.profilePhoto!,
                                      ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                value.accountGetter == null
                                    ? 'Null'
                                    : 'Hello ${value.accountGetter!.firstName}',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                'Great Events Start Here!',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: IconButton(
                            onPressed: () async {
                              final token = LocalStorageManager();
                              token.deleteLoginToken();
                              token.deleteVerificationToken();
                              await Future.delayed(
                                  const Duration(milliseconds: 2000), () {
                                if (context.mounted) {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      '/', (route) => false);
                                }
                              });
                            },
                            icon: const PhosphorIcon(
                              PhosphorIconsRegular.bell,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SliverPersistentHeader(
                      delegate: EVSearchBarDelegate(),
                      pinned: true,
                    ),
                  ],
                  body: const BrowseVendorsVendorList(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
