import 'package:flutter/material.dart';

class BrowseVendorItemDetails extends StatelessWidget {
  const BrowseVendorItemDetails({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text(
          'Coming Soon...',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
