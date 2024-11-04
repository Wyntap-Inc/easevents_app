import 'package:easevents_app/exports.dart';

class RegisterSuccessScreen extends StatelessWidget {
  const RegisterSuccessScreen({super.key});

  static const routeName = 'success';

  @override
  Widget build(BuildContext context) {
    final loader = Provider.of<LoaderProvider>(context);

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
              const SizedBox(height: 15),
              Text(
                'Account Successfully Verified!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 13),
              Text(
                'Congratulations your account has fully verify, you can now login to your account.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      height: 1.5,
                    ),
              ),
              const Spacer(),
              AppOutlinedButtonPlain(
                isLoading: loader.isLoading,
                onTap: () async {
                  final storageManager = LocalStorageManager();

                  final token = await storageManager.getLoginToken();

                  await loader.loader();

                  if (token != null && token.isNotEmpty) {
                    storageManager.deleteVerificationToken();
                    if (context.mounted) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          EVBottomNavigationBar.routeName, (route) => false);
                    }
                  }
                },
                text: 'Confirm',
              ),
              const SizedBox(height: 13),
            ],
          ),
        ),
      ),
    );
  }
}
