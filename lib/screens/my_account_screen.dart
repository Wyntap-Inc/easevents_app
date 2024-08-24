import 'package:flutter/material.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Me'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                            'https://cdn.prod.website-files.com/5fd2ba952bcd68835f2c8254/654553fedbede7976b97eaf5_Professional-5.remini-enhanced.webp'),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        'John Doe',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Account Manamgement'),
                    icon: const Icon(Icons.account_circle),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Username'),
                    icon: const Icon(Icons.alternate_email_rounded),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Account',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Account Manamgement'),
                    icon: const Icon(Icons.account_circle),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Notifications'),
                    icon: const Icon(Icons.circle_notifications),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: const Text('Help'),
                    icon: const Icon(Icons.help),
                  ),
                ],
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Sign Out'))
            ],
          ),
        ),
      ),
    );
  }
}
