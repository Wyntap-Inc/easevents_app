import 'package:easevents_app/constants/styles.dart';
import 'package:easevents_app/exports.dart';
import 'package:easevents_app/widgets/app_outlinedButton.dart';
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
              flex: 4,
              child: ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  color: AppColors.primaryColor,
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
                                color: AppColors.primaryWhite,
                                fontWeight: FontWeight.bold,
                                height: 2,
                              ),
                        ),
                        Text(
                          'Booking simplified, experiences amplified!',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: AppColors.primaryWhite),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    AppOutlinedButton('Login', () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    }),
                    const SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side:
                            BorderSide(color: AppColors.enabledBorderSideColor),
                      ),
                      child: const Text('Create an account'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
