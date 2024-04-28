import '../exports.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
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
              ),
              const SizedBox(height: 24),
              Text(
                'Create an account',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 32),
              TextField(
                style: const TextStyle(fontSize: 13),
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter your email address',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Continue with email'),
              ),
              const SizedBox(height: 24),
              const DividerWidget(),
              const SizedBox(height: 24),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'asset/icon/google.png',
                  height: 24,
                  width: 24,
                ),
                label: const Text('Sign up with Google'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: AppColors.enabledBorderSideColor,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account? ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.textPrimary,
                          ),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
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
    );
  }
}
