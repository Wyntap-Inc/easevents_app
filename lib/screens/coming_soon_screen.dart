import 'package:flutter/material.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  Future<void> comingSoon() async {
    await Future.delayed(const Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
          future: comingSoon(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Coming Soon...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }
}
