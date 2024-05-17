import 'package:easevents_app/widgets/app_outlined_btn_icon.dart';
import 'package:easevents_app/widgets/app_outlined_btn_plain.dart';

import '../exports.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  final TextEditingController _invitationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            height: AppStyles.getUsableHeight(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Join us for free',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('Welcome back.\nYou\'ve been missed!',
                    style: Theme.of(context).textTheme.titleLarge),
                const Spacer(),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: const InputDecoration(hintText: 'Phone number'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _fullNameController,
                  decoration: const InputDecoration(hintText: 'Full name'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: 'Make a password'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _repeatPasswordController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password again',
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _invitationController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Invitation Code (Optional)',
                  ),
                ),
                const SizedBox(height: 12),
                AppOutlinedButtonPlain(
                  text: 'Sign up',
                  onTap: () {},
                ),
                const SizedBox(height: 12),
                AppOutlinedButtonIcon(
                  text: 'Sign up with Google',
                  onTap: () {},
                  iconData: Image.asset(
                    'asset/icon/google.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppStyles.textPrimary,
                              fontSize: 11,
                            ),
                      ),
                      TextSpan(
                        text: 'Login',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppStyles.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
