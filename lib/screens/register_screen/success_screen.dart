import 'package:easevents_app/exports.dart';
import 'package:easevents_app/services/token_storage.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  static const routeName = 'success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Account Successfuly Verified!'),
            ElevatedButton(
              onPressed: () async {
                final String? token = await TokenStorage().getLoginToken();

                if (token != null && token.isNotEmpty) {
                  TokenStorage().deleteVerificationToken();
                  if (context.mounted) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        EVBottomNavigationBar.routeName, (route) => false);
                  }
                }
              },
              child: const Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
