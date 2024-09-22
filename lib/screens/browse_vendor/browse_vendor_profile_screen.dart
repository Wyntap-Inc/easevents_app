import 'package:easevents_app/constants/ev_styles.dart';
import 'package:easevents_app/models/ev_vendor.dart';
import 'package:easevents_app/screens/inquiry_screen.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class EvVendorProfileScreen extends StatelessWidget {
  const EvVendorProfileScreen(this.evProvider, {super.key});

  final EvVendor evProvider;

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
              builder: (context) => const InquiryScreen(),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: evProvider.name,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          evProvider.image,
                          height: MediaQuery.of(context).size.height / 3.5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
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
                        buildTags(),
                        const SizedBox(height: 16),
                        Text(
                          evProvider.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        buildLocationInfo(),
                        const SizedBox(height: 8),
                        Text(
                          evProvider.intro,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            height: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Divider(),
                        ),
                        const Text(
                          'Services',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Column(
                          children: evProvider.tags
                              .map(
                                (data) => SizedBox(
                                  width: double.infinity,
                                  height: 150,
                                  child: Card(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Center(
                                      child: Text(data),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ],
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
                boxShadow: [],
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
        Icon(
          opticalSize: 30,
          PhosphorIcons.mapPinArea(),
          size: 30,
        ),
        const SizedBox(width: 8),
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
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              tag,
              style: const TextStyle(
                fontSize: 12,
                color: EVStyles.primaryWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
