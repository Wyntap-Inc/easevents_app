import 'package:easevents_app/exports.dart';

class BrowseVendorScreenListItem extends StatelessWidget {
  const BrowseVendorScreenListItem(this.evVendor, {super.key});

  final EvVendor evVendor;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double responsiveSize =
            (constraints.maxWidth / 20).clamp(8, 30); //check this

        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EvVendorProfileScreen(evVendor),
              ),
            );
          },
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    vendorImageBuilder(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8).add(
                        const EdgeInsets.symmetric(horizontal: 8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: vendorLocationInfoBuilder(
                                context, responsiveSize),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child:
                                bookMarkVendorBuilder(context, responsiveSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      vendorNameBuilder(context, responsiveSize),
                      const SizedBox(height: 5),
                      vendorTagsBuilder(context, responsiveSize),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget vendorImageBuilder() {
    return AspectRatio(
      aspectRatio: 4 / 3,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        width: double.infinity,
        child: Hero(
          tag: evVendor.name,
          child: FadeInImage(
            fit: BoxFit.cover,
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage(evVendor.image),
          ),
        ),
      ),
    );
  }

  Widget vendorLocationInfoBuilder(BuildContext context, double fontSize) {
    double textScaleFactor = MediaQuery.textScalerOf(context).scale(0.8);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: EVStyles.primaryWhite,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Row(
        children: [
          Icon(
            PhosphorIcons.mapPinArea(),
            size: fontSize,
          ),
          SizedBox(width: 4.sp),
          Text(
            evVendor.location,
            style: TextStyle(
              fontSize: fontSize,
              color: EVStyles.primaryColor,
              overflow: TextOverflow.ellipsis,
            ),
            textScaler: TextScaler.linear(textScaleFactor),
          ),
        ],
      ),
    );
  }

  Widget bookMarkVendorBuilder(BuildContext context, double responsiveSize) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: EVStyles.primaryWhite,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Icon(
        PhosphorIcons.bookmarkSimple(),
        size: responsiveSize,
      ),
    );
  }

  Widget vendorNameBuilder(BuildContext context, double fontSize) {
    return Text(
      evVendor.name,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget vendorTagsBuilder(BuildContext context, double fontSize) {
    double textScaleFactor = MediaQuery.textScalerOf(context).scale(0.8);

    return Wrap(
      children: [
        ...evVendor.tags.map(
          (tag) => Container(
            margin: EdgeInsets.only(
              top: 2.sp,
              bottom: 2.sp,
              right: 4.sp,
            ),
            padding: EdgeInsets.all(4.sp),
            decoration: BoxDecoration(
              color: EVStyles.primaryWhite,
              borderRadius: BorderRadius.circular(8.sp),
            ),
            child: Text(
              tag,
              style: TextStyle(
                fontSize: fontSize,
                color: EVStyles.primaryColor,
              ),
              overflow: TextOverflow.ellipsis,
              textScaler: TextScaler.linear(textScaleFactor),
            ),
          ),
        ),
      ],
    );
  }
}
