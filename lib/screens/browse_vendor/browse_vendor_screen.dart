import 'package:easevents_app/exports.dart';

class BrowseVendorScreen extends StatelessWidget {
  const BrowseVendorScreen({super.key});

  Widget evBannerBuilder() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Card(
          margin: EdgeInsets.zero,
          child: Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                colors: [
                  EVStyles.primaryColor,
                  EVStyles.primaryLiteColor,
                ],
                stops: [0.25, 1],
                begin: Alignment(-1, -1.2),
                end: Alignment(0.5, 5),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  top: 0,
                  child: Image.asset(
                    'assets/images/demoguy.png',
                    width: 170,
                    height: 170,
                  ),
                ),
                const Positioned(
                  top: 15,
                  left: 90,
                  child: Text(
                    'Be a Part of Every Special Moment',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
                const Positioned(
                  top: 35,
                  left: 120,
                  child: Text(
                    'Become a Vendor Today!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
                Positioned(
                  top: 55,
                  left: 160,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(70, 30),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Text(
                          'Become a Vendor',
                          style: TextStyle(
                            color: EVStyles.primaryColor,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'assets/images/arrow-right.png',
                          width: 16,
                          height: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget viewAllServicesBuilder(BuildContext context) {
    return Row(
      children: [
        Text(
          'Checkout our Vendors & Services',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.0316,
            fontWeight: FontWeight.w600,
            color: EVStyles.primaryColor,
          ),
        ),
        const Spacer(),
        Text(
          'View All',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.0316,
            fontWeight: FontWeight.w500,
            color: EVStyles.primaryColor,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: EVStyles.primaryWhite,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

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
                    evBannerBuilder(),
                  ],
                  body: Container(
                    margin: const EdgeInsets.only(
                      right: 16,
                      left: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        viewAllServicesBuilder(context),
                        const SizedBox(height: 8),
                        Expanded(
                          child: GridView.builder(
                            itemCount: dummyData.length,
                            padding: const EdgeInsets.only(
                              bottom: 8,
                            ),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.7,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                            ),
                            itemBuilder: (context, index) =>
                                BrowseVendorScreenListItem(
                              dummyData[index],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
