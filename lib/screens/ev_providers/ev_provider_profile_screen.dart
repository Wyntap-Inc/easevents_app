import 'package:easevents_app/models/ev_provider.dart';
import 'package:flutter/material.dart';

class EVProviderProfile extends StatelessWidget {
  const EVProviderProfile(this.evProvider, {super.key});

  final EVProvider evProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(evProvider.name),
      ),
      body: Center(
        child: Column(
          children: [
            Hero(
              tag: evProvider.name,
              child: Image.asset(
                evProvider.image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
