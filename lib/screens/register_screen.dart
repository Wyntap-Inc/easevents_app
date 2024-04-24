import 'package:easevents_app/widgets/custom_account_button.dart';
import 'package:easevents_app/widgets/custom_elevated_button.dart';
import 'package:easevents_app/widgets/custom_google_button.dart';
import 'package:easevents_app/widgets/custom_sign_up_textField.dart';
import 'package:easevents_app/widgets/divider_widget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(''),
                ),
                const SizedBox(height: 24),
                Text(
                  'Create an account',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 32),
                CustomTextField(
                  hintText: 'Enter your email',
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                CustomElevatedButton(
                  text: 'Continue with email',
                  onPressed: () {},
                ),
                const SizedBox(height: 24),
                const DividerWidget(),
                const SizedBox(height: 24),
                CustomGoogleButton(
                  image: 'asset/icon/google.png',
                  text: 'Sign up with Google',
                  onPressed: () {},
                ),
                const SizedBox(height: 32),
                CustomAccountButton(
                  text: 'Already have an account?',
                  textButton: 'Log in',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
