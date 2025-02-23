import 'package:easevents_app/exports.dart';
import 'package:flutter_html/flutter_html.dart';

class BrowseVendorItemsScreen extends StatefulWidget {
  const BrowseVendorItemsScreen({required this.item, super.key});

  final Data item;

  @override
  State<BrowseVendorItemsScreen> createState() =>
      _BrowseVendorItemsScreenState();
}

class _BrowseVendorItemsScreenState extends State<BrowseVendorItemsScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.item.name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const HugeIcon(
              icon: HugeIcons.strokeRoundedMoreVertical,
              color: EVStyles.primaryColor,
              size: 30,
            ),
          )
        ],
      ),
      body: SizedBox(
        height: EVStyles.getUsableHeight(context),
        child: widget.item.mapOrNull(
          item: (item) {
            return Stack(
              children: [
                SizedBox(
                  height: EVStyles.getUsableHeight(context) - 80,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              height: 300,
                              child: PageView.builder(
                                scrollDirection: Axis.horizontal,
                                physics: const PageScrollPhysics(),
                                itemCount: item.media!.length,
                                onPageChanged: (index) {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return customImageSliderBuilder(
                                    item.media![index].url!,
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              right: 16,
                              bottom: 16,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: EVStyles.blackDark.withAlpha(
                                    (255 * 0.5).toInt(),
                                  ),
                                ),
                                child: Text(
                                  '${(_currentIndex + 1).toString()} / ${item.media!.length}',
                                  style: const TextStyle(
                                    color: EVStyles.primaryWhite,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: size.width,
                          margin: const EdgeInsets.only(
                            top: 16,
                            left: 16,
                            right: 16,
                            bottom: 8,
                          ),
                          child: Row(
                            children: [
                              informationBuilder(
                                type: item.type,
                                name: item.name,
                                size: size.width,
                              ),
                              const Spacer(),
                              const CircleAvatar(
                                backgroundColor: EVStyles.primaryLiteColor,
                                minRadius: 30,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: const Divider(),
                        ),
                        descriptionBuilder(item.description!),
                      ],
                    ),
                  ),
                ),
                bottomButtonsBuilder(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget customImageSliderBuilder(String imageUrl) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            insetAnimationDuration: const Duration(
              milliseconds: 700,
            ),
            insetPadding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: SizedBox(
              width: double.infinity,
              child: InteractiveViewer(
                panEnabled: true,
                minScale: 0.5,
                maxScale: 4,
                child: Image.network(imageUrl),
              ),
            ),
          ),
        );
      },
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget informationBuilder(
      {required String type, required String name, required double size}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          type.toUpperCase(),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: EVStyles.blackDark,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: EVStyles.blackDark,
            ),
          ),
        ),
        const Text(
          'Batangas City, Philippines',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: EVStyles.blackDark,
          ),
        ),
        const SizedBox(height: 2),
        SizedBox(
          width: size - 100,
          child: RichText(
            textAlign: TextAlign.start,
            overflow: TextOverflow.clip,
            text: TextSpan(
              style: const TextStyle(
                color: EVStyles.textPrimary,
                fontSize: 12,
              ),
              children: [
                TextSpan(text: name),
                const TextSpan(text: ' • '),
                const TextSpan(
                  text: 'Established Since Jan 2019',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            const Icon(
              PhosphorIconsFill.star,
              size: 12,
            ),
            const SizedBox(width: 6),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: EVStyles.blackDark,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(text: '4.9'),
                  TextSpan(text: ' • '),
                  TextSpan(
                    text: '123 reviews',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget descriptionBuilder(String description) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What do we offer?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: EVStyles.blackDark,
            ),
          ),
          Html(
            data: description,
            style: {
              "body": Style(
                margin: Margins.all(0),
                padding: HtmlPaddings.all(0),
              ),
              "p": Style(
                margin: Margins.all(0),
                padding: HtmlPaddings.all(0),
              ),
            },
          ),
        ],
      ),
    );
  }

  Widget bottomButtonsBuilder() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 1),
              spreadRadius: 0.1,
              blurRadius: 1,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(80, 44),
                  backgroundColor: EVStyles.primaryWhite,
                  foregroundColor: EVStyles.primaryColor,
                ),
                child: const Text(
                  'Inquire',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: EVStyles.primaryColor,
                  foregroundColor: EVStyles.primaryWhite,
                ),
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
