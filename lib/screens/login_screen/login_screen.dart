import 'package:easevents_app/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loader = Provider.of<LoaderProvider>(context);

    final googleSignInProvider =
        Provider.of<GoogleSigninRedirectURLProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              height: EVStyles.getUsableHeight(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Let\'s sign you in',
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
                    validator: (value) => Validator.validateEmail(
                      email: _emailController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: 'Password'),
                    validator: (value) => Validator.validatePassword(
                      password: _passwordController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  AppOutlinedButtonPlain(
                    isLoading: loader.isLoading,
                    text: 'Sign in',
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        LoginService().userLogin(
                          _emailController.text,
                          _passwordController.text,
                        );

                        await loader.loader();

                        if (context.mounted) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Logged in successfuly'),
                          ));

                          Navigator.of(context).pushNamedAndRemoveUntil(
                            EVBottomNavigationBar.routeName,
                            (route) => false,
                          );
                        }
                      }
                    },
                  ),
                  const SizedBox(height: 12),
                  AppOutlinedButtonIcon(
                    text: 'Continue with Google',
                    onTap: () async {
                      await googleSignInProvider.fetchRedirectString();
                      if (context.mounted) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginWebView();
                            },
                          ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                          text: 'Forgot password?',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: EVStyles.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                  ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('.'),
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: EVStyles.textPrimary,
                                    fontSize: 11,
                                  ),
                            ),
                            TextSpan(
                              text: 'Sign up',
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
                                          const RegisterScreen(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
