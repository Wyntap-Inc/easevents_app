import 'package:easevents_app/exports.dart';
import 'package:easevents_app/widgets/custom_clip_path.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ClipPath(
                clipper: CustomClipPath(),
                child: ClipRect(
                  child: Container(
                    color: AppStyles.primaryColor,
                    width: double.infinity,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Welcome to Easevents',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color: AppStyles.primaryWhite,
                                  fontWeight: FontWeight.bold,
                                  height: 2,
                                ),
                          ),
                          const Text(
                            'Booking simplified, experiences amplified!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppStyles.primaryWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                children: [
                  AppOutlinedButtonPlain(
                    text: 'Sign in',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  AppOutlinedButtonPlain(
                    text: 'Create an account',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    bgColor: AppStyles.primaryWhite,
                    fgColor: AppStyles.primaryColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
