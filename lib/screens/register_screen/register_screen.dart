import 'package:easevents_app/exports.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loader = Provider.of<LoaderProvider>(context);
    final googleSignInProvider =
        Provider.of<GoogleSigninRedirectURLProvider>(context);
    final responseProvider = Provider.of<ResponseProvider>(context);

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        responseProvider.disposeProvider();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              height: EVStyles.getUsableHeight(context),
              child: Form(
                key: _formKey,
                child: Consumer<ResponseProvider>(
                  builder: (_, value, __) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Join us for free',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Let\'s Bring your Dream \nEvent to Life!',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Spacer(),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _firstNameController,
                          decoration:
                              const InputDecoration(hintText: 'First Name'),
                          validator: (_) => Validator.validateName(
                            name: _firstNameController.text,
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _lastNameController,
                          decoration:
                              const InputDecoration(hintText: 'Last Name'),
                          validator: (_) => Validator.validateName(
                            name: _lastNameController.text,
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _emailController,
                          decoration: const InputDecoration(
                              hintText: 'Enter email address'),
                          validator: (_) => Validator.validateEmail(
                            email: _emailController.text,
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Enter your Password',
                          ),
                          validator: (value) {
                            if (_passwordController.text.isEmpty) {
                              return 'Repeat password field is required';
                            } else if (value != _passwordController.text) {
                              return 'Password doesn\'t match';
                            }
                            return null;
                          },
                        ),
                        ErrorMessageBuilder(status: value.getResponse),
                        const SizedBox(height: 12),
                        AppOutlinedButtonPlain(
                          isLoading: loader.isLoading,
                          text: 'Sign up',
                          onTap: () async {
                            await loader.loader();
                            if (_formKey.currentState!.validate()) {
                              await value.register(
                                _firstNameController.text,
                                _lastNameController.text,
                                _emailController.text,
                                _passwordController.text,
                              );

                              if (value.getResponse != 'already-exists') {
                                if (context.mounted) {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => RegisterOtpScreen(
                                        email: _emailController.text,
                                      ),
                                    ),
                                  );
                                }

                                value.disposeProvider();
                              }
                            }
                          },
                        ),
                        const SizedBox(height: 12),
                        AppOutlinedButtonIcon(
                          text: 'Sign up with Google',
                          onTap: () async {
                            await googleSignInProvider.fetchRedirectString();
                            if (context.mounted) {
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginWebView();
                                  },
                                ),
                                (route) => false,
                              );
                            }
                          },
                          iconData: Image.asset(
                            'assets/images/google.png',
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
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: EVStyles.textPrimary,
                                      fontSize: 11,
                                    ),
                              ),
                              TextSpan(
                                text: 'Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: EVStyles.primaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
