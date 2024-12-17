import 'package:easevents_app/exports.dart';

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
                  buildImageSlider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25.sp),
                        Text(
                          evProvider.name,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.sp),
                        buildLocationInfo(),
                        SizedBox(height: 12.sp),
                        buildTags(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.sp),
                          child: const Divider(),
                        ),
                        Text(
                          evProvider.intro,
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.normal,
                            height: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.sp),
                          child: const Divider(),
                        ),
                        Text(
                          'Services',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.sp),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: evProvider.tags
                                .map(
                                  (data) => Container(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.only(
                                      right: 8.sp,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.sp),
                                      border: Border.all(
                                        color: EVStyles.primaryColor,
                                      ),
                                    ),
                                    padding: EdgeInsets.all(8.sp),
                                    child: Text(
                                      data,
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        color: EVStyles.primaryColor,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        SizedBox(height: 12.sp),
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
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.sp),
                          child: const Divider(),
                        ),
                        Text(
                          'Testimonials',
                          style: TextStyle(
                            fontSize: 13.sp,
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
                                SizedBox(width: 8.sp),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'John Doe',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        testimonial,
                                        style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 10.sp,
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
              buildVendorDisplayPhoto(),
              buildCustomAppBar(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageSlider() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: PageView.builder(
        itemCount: 10,
        itemBuilder: (context, pagePosition) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.sp),
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
    );
  }

  Widget buildVendorDisplayPhoto() {
    return Positioned(
      top: 170.sp,
      // bottom: 50,
      left: 36,
      // right: 0,
      child: CircleAvatar(
        backgroundColor: EVStyles.primaryWhite,
        radius: 30.sp,
        child: CircleAvatar(
          backgroundImage: const AssetImage('assets/images/default.png'),
          radius: 48.sp,
          backgroundColor: EVStyles.primaryColor,
        ),
      ),
    );
  }

  Widget buildCustomAppBar(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
        left: 16.sp,
        right: width >= 600 ? 16.sp : 24,
        top: 8.sp,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 40.sp,
              height: 40.sp,
              decoration: BoxDecoration(
                color: EVStyles.primaryWhite,
                borderRadius: BorderRadius.circular(20.sp),
              ),
              child: Icon(
                PhosphorIcons.bookmarkSimple(),
                color: EVStyles.primaryColor,
                size: 20.sp,
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
        Text(
          evProvider.location,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildTags() {
    return Wrap(
      spacing: 8.sp,
      runAlignment: WrapAlignment.spaceBetween,
      runSpacing: 8.sp,
      direction: Axis.horizontal,
      children: [
        ...evProvider.tags.map(
          (tag) => Container(
            padding: EdgeInsets.all(8.sp),
            decoration: BoxDecoration(
              color: EVStyles.primaryColor,
              borderRadius: BorderRadius.circular(15.sp),
            ),
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                tag,
                style: TextStyle(
                  fontSize: 10.sp,
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
