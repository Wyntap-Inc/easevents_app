import 'package:easevents_app/exports.dart';

class EVSearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: EVStyles.primaryWhite,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 236, 236),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          hintText: 'Search for providers or events',
          prefixIcon: Icon(
            PhosphorIcons.magnifyingGlass(),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 60.0; // Height of the search bar
  @override
  double get minExtent => 60.0; // Height of the search bar
  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
