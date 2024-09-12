import 'package:easevents_app/exports.dart';
import 'package:easevents_app/models/ev_vendor.dart';

class BrowseVendorScreenListItem extends StatelessWidget {
  const BrowseVendorScreenListItem(this.evProvider, {super.key});

  final EvVendor evProvider;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EvVendorProfileScreen(evProvider),
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
                Container(
                  height: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  width: double.infinity,
                  child: Hero(
                    tag: evProvider.name,
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      placeholder: MemoryImage(kTransparentImage),
                      image: AssetImage(evProvider.image),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: EVStyles.primaryWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Wrap(
                          children: [
                            Icon(
                              PhosphorIcons.mapPinArea(),
                              size: 12,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              evProvider.location,
                              style: const TextStyle(
                                fontSize: 8,
                                color: EVStyles.primaryColor,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: EVStyles.primaryWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          PhosphorIcons.bookmarkSimple(),
                          size: 12,
                        ),
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
                  Text(
                    evProvider.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Wrap(
                    children: [
                      ...evProvider.tags.map(
                        (tag) => Container(
                          margin: const EdgeInsets.only(
                            top: 2,
                            bottom: 2,
                            right: 4,
                          ),
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: EVStyles.primaryWhite,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            tag,
                            style: const TextStyle(
                              fontSize: 8,
                              color: EVStyles.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
