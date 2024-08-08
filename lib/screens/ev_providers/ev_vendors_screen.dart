import 'package:easevents_app/exports.dart';

class EvVendorsScreen extends StatefulWidget {
  const EvVendorsScreen({super.key});

  @override
  State<EvVendorsScreen> createState() => _EVProvidersScreenState();
}

class _EVProvidersScreenState extends State<EvVendorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Find a provider',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppStyles.primaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () async {},
              icon: const PhosphorIcon(
                PhosphorIconsBold.user,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(
            top: 8,
            right: 16,
            left: 16,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search for providers or events',
                  prefixIcon: Icon(
                    PhosphorIcons.magnifyingGlass(),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: GridView.builder(
                  itemCount: dummyData.length,
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) =>
                      EvVendorListItem(dummyData[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
