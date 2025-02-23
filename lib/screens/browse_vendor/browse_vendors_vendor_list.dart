import 'package:easevents_app/exports.dart';
import 'package:easevents_app/screens/browse_vendor/browse_vendor_items_screen.dart';

class BrowseVendorsVendorList extends StatefulWidget {
  const BrowseVendorsVendorList({super.key});

  @override
  State<BrowseVendorsVendorList> createState() =>
      _BrowseVendorsVendorListState();
}

class _BrowseVendorsVendorListState extends State<BrowseVendorsVendorList> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadRefreshData();
    });
  }

  Future<void> loadRefreshData() async {
    await Provider.of<VendorProvider>(context, listen: false)
        .getVendorsFromService();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VendorProvider>(
      builder: (context, vendorProvider, child) {
        final vendors = vendorProvider.vendorList;

        if (vendorProvider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        debugPrint(vendors.toString());

        return RefreshIndicator(
          onRefresh: loadRefreshData,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: vendors.length,
            itemBuilder: (context, index) {
              final vendor = vendors[index];

              return vendor.when(
                item: (
                  sku,
                  name,
                  description,
                  media,
                  tags,
                  status,
                  type,
                  rental,
                  pricing,
                  createdBy,
                  workspace,
                  workspaceSpace,
                  organization,
                  deleted,
                  dataType,
                  urlCode,
                  createdAt,
                  updatedAt,
                  id,
                ) {
                  final imageUrl = (media != null && media.isNotEmpty)
                      ? media.first.url
                      : null;

                  return GestureDetector(
                    onTap: () {
                      vendor.mapOrNull(
                        item: (item) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  BrowseVendorItemsScreen(item: item),
                            ),
                          );
                        },
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    width: double.infinity,
                                    height: 200,
                                    child: imageUrl != null
                                        ? FadeInImage.memoryNetwork(
                                            fit: BoxFit.cover,
                                            placeholder: kTransparentImage,
                                            image: imageUrl,
                                          )
                                        : const Center(
                                            child: Text('No Image Provided'),
                                          ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                      ),
                                      margin: const EdgeInsets.only(
                                          top: 8, left: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white
                                            .withAlpha((0.9 * 255).toInt()),
                                      ),
                                      height: 25,
                                      child: const Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          PhosphorIcon(
                                            PhosphorIconsFill.mapPin,
                                            size: 12,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            'Marulas, Valenzuela City',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: EVStyles.textPrimary,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white
                                            .withAlpha((0.9 * 255).toInt()),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      height: 25,
                                      width: 25,
                                      margin: const EdgeInsets.only(
                                          top: 8, right: 8),
                                      padding: const EdgeInsets.all(4),
                                      child: const FittedBox(
                                        fit: BoxFit.contain,
                                        child: PhosphorIcon(
                                          PhosphorIconsBold.heart,
                                          size: 100,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: EVStyles.textPrimary,
                                  ),
                                ),
                                const Spacer(),
                                const PhosphorIcon(
                                  PhosphorIconsFill.star,
                                  size: 15,
                                  color: Color.fromARGB(255, 233, 183, 0),
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  '4.9',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 8),
                            pricing == null
                                ? Container()
                                : RichText(
                                    text: TextSpan(
                                      text:
                                          '\u{20B1}${pricing.fixed.price == null ? PriceFormatter.formatter(
                                              pricing.flat.price!.toInt(),
                                            ) : PriceFormatter.formatter(
                                              pricing.fixed.price!.toInt(),
                                            )}',
                                      style: const TextStyle(
                                        color: EVStyles.primaryLiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                site: (
                  name,
                  title,
                  description,
                  logo,
                  covers,
                  status,
                  sections,
                  createdBy,
                  workspace,
                  workspaceSpace,
                  organization,
                  deleted,
                  dataType,
                  urlCode,
                  createdAt,
                  updatedAt,
                  id,
                ) {
                  final coverUrl = (covers != null && covers.isNotEmpty)
                      ? covers.first.url
                      : null;

                  return Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  width: double.infinity,
                                  height: 200,
                                  child: coverUrl != null
                                      ? Stack(
                                          children: [
                                            Image.network(
                                              width: double.infinity,
                                              height: double.infinity,
                                              coverUrl,
                                              fit: BoxFit.cover,
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              color: Colors.white70.withAlpha(
                                                (0.7 * 255).toInt(),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                clipBehavior: Clip.antiAlias,
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    100,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withAlpha(
                                                        (0.2 * 255).toInt(),
                                                      ), // Shadow color
                                                      spreadRadius:
                                                          2, // How much it spreads
                                                      blurRadius:
                                                          8, // Blur intensity
                                                      offset: const Offset(
                                                        4,
                                                        4,
                                                      ), // X, Y offset
                                                    ),
                                                  ],
                                                ),
                                                child: Image.network(
                                                  logo,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      : const Center(
                                          child: Text('No Image Provided'),
                                        ),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    margin:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white
                                          .withAlpha((0.9 * 255).toInt()),
                                    ),
                                    height: 25,
                                    child: const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        PhosphorIcon(
                                          PhosphorIconsFill.mapPin,
                                          size: 12,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'Marulas, Valenzuela City',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: EVStyles.textPrimary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white
                                          .withAlpha((0.9 * 255).toInt()),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    height: 25,
                                    width: 25,
                                    margin:
                                        const EdgeInsets.only(top: 8, right: 8),
                                    padding: const EdgeInsets.all(4),
                                    child: const FittedBox(
                                      fit: BoxFit.contain,
                                      child: PhosphorIcon(
                                        PhosphorIconsBold.heart,
                                        size: 100,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: EVStyles.textPrimary,
                                ),
                              ),
                              const Spacer(),
                              const PhosphorIcon(
                                PhosphorIconsFill.star,
                                size: 15,
                                color: Color.fromARGB(255, 233, 183, 0),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                '4.9',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
