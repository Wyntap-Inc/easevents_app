import 'dart:ui';

import 'package:easevents_app/constants/ev_styles.dart';
import 'package:easevents_app/models/ev_vendor.dart';
import 'package:easevents_app/screens/browse_vendor/browse_vendor_item_details.dart';
import 'package:easevents_app/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EvVendorProfileScreen extends StatelessWidget {
  EvVendorProfileScreen(this.evProvider, {super.key});

  final EvVendor evProvider;

  final List<String> items = [
    'Kick Starter Plan',
    'Birthday Package 1',
    'Wedding Planner',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: EVStyles.primaryColor,
        title: const Text('Vendor Profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              PhosphorIconsBold.dotsThreeVertical,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: EVStyles.primaryColor,
        foregroundColor: EVStyles.primaryWhite,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ChatScreen(
                title: evProvider.name,
              ),
            ),
          );
        },
        label: const Text('Inquire now'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: PageView.builder(
                      itemCount: 10,
                      itemBuilder: (context, pagePosition) => Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          evProvider.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      pageSnapping: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        Text(
                          evProvider.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        buildLocationInfo(),
                        const SizedBox(height: 16),
                        buildTags(),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Divider(),
                        ),
                        Text(
                          evProvider.intro,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            height: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Divider(),
                        ),
                        const Text(
                          'Services',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: evProvider.tags
                                .map(
                                  (data) => Container(
                                    clipBehavior: Clip.antiAlias,
                                    margin: const EdgeInsets.only(
                                      right: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: EVStyles.primaryColor,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      data,
                                      style: const TextStyle(
                                        fontSize: 8,
                                        color: EVStyles.primaryColor,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        // SizedBox(
                        //   height: 380,
                        //   width: MediaQuery.of(context).size.width,
                        //   child: GridView.builder(
                        //     itemCount: 15,
                        //     gridDelegate:
                        //         const SliverGridDelegateWithFixedCrossAxisCount(
                        //       crossAxisCount: 3,
                        //       childAspectRatio: 1,
                        //       crossAxisSpacing: 4,
                        //       mainAxisSpacing: 4,
                        //     ),
                        //     itemBuilder: (context, index) => Container(
                        //       clipBehavior: Clip.antiAlias,
                        //       decoration: BoxDecoration(
                        //         color: EVStyles.primaryColor,
                        //         borderRadius: BorderRadius.circular(8),
                        //       ),
                        //       child: Image.asset(
                        //         evProvider.image,
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        ...items.map(
                          (item) => Container(
                            clipBehavior: Clip.antiAlias,
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                              color: EVStyles.primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(8),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        BrowseVendorItemDetails(title: item),
                                  ),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/planner.jpg',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Center(
                                    child: Text(item),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Divider(),
                        ),
                        const Text(
                          'Testimonials',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ...evProvider.testimonials.map(
                          (testimonial) => Container(
                            // color: Colors.red,
                            padding: const EdgeInsets.only(bottom: 4, top: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(evProvider.image),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'John Doe',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        testimonial,
                                        style: const TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 10,
                                        ),
                                        maxLines: 3,
                                        softWrap: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Positioned(
                top: 170,
                // bottom: 50,
                left: 36,
                // right: 0,
                child: CircleAvatar(
                  backgroundColor: EVStyles.primaryWhite,
                  radius: 50,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/default.png'),
                    radius: 48,
                    backgroundColor: EVStyles.primaryColor,
                  ),
                ),
              ),
              buildCustomAppBar(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomAppBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 24,
        top: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: EVStyles.primaryWhite,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                PhosphorIcons.bookmarkSimple(),
                color: EVStyles.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLocationInfo() {
    return Row(
      children: [
        // Icon(
        //   opticalSize: 30,
        //   PhosphorIcons.mapPinArea(),
        //   size: 30,
        // ),
        // const SizedBox(width: 8),
        Text(
          evProvider.location,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildTags() {
    return Wrap(
      spacing: 8,
      runAlignment: WrapAlignment.spaceBetween,
      runSpacing: 8,
      direction: Axis.horizontal,
      children: [
        ...evProvider.tags.map(
          (tag) => Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: EVStyles.primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                tag,
                style: const TextStyle(
                  fontSize: 10,
                  color: EVStyles.primaryWhite,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
