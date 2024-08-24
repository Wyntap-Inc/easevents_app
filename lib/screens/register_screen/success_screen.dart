import 'package:easevents_app/exports.dart';
import 'package:easevents_app/services/token_storage.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  static const routeName = 'success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
          child: Column(
            children: [
              SizedBox(
                height: 210,
                child: OverflowBox(
                  minHeight: 200,
                  maxHeight: 400,
                  child: Lottie.asset(
                    filterQuality: FilterQuality.high,
                    addRepaintBoundary: true,
                    repeat: false,
                    'assets/animated_json/success.json',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Account Successfuly Verified!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 13),
              Text(
                'Congratulations your account has fully veryfied, you can now login to your account.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      height: 1.5,
                    ),
              ),
              const Spacer(),
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
              const SizedBox(height: 13),
            ],
          ),
        ),
      ),
    );
  }
}
