import 'package:easevents_app/services/token_storage.dart';
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
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Coming Soon...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () async {
                        final token = TokenStorage();
                        token.deleteToken();
                        await Future.delayed(const Duration(milliseconds: 2000),
                            () {
                          Navigator.of(context)
                              .pushNamedAndRemoveUntil('/', (route) => false);
                        });
                      },
                      child: const Text('Logout'),
                    ),
                  ],
                ),
              );
            }
          }),
    );
  }
}
