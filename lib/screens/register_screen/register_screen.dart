import 'package:easevents_app/providers/loader.dart';
import 'package:easevents_app/screens/register_screen/register_otp_screen.dart';
import 'package:easevents_app/services/register_service.dart';
import 'package:provider/provider.dart';

import '../../exports.dart';

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

  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(checkFields);
    _firstNameController.addListener(checkFields);
    _lastNameController.addListener(checkFields);
    _passwordController.addListener(checkFields);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void checkFields() {
    setState(() {
      isButtonEnabled = _emailController.text.isNotEmpty &&
          _firstNameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    final loader = Provider.of<LoaderProvider>(context);
    return Scaffold(
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
              child: Column(
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
                  Text('Welcome back.\nYou\'ve been missed!',
                      style: Theme.of(context).textTheme.titleLarge),
                  const Spacer(),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _firstNameController,
                    decoration: const InputDecoration(hintText: 'First Name'),
                    validator: (_) => Validator.validateName(
                      name: _firstNameController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _lastNameController,
                    decoration: const InputDecoration(hintText: 'Last Name'),
                    validator: (_) => Validator.validateName(
                      name: _lastNameController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _emailController,
                    decoration:
                        const InputDecoration(hintText: 'Enter email address'),
                    validator: (_) => Validator.validateEmail(
                      email: _emailController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // TextFormField(
                  //   autovalidateMode: AutovalidateMode.onUserInteraction,
                  //   controller: _passwordController,
                  //   obscureText: true,
                  //   decoration: const InputDecoration(
                  //     hintText: 'Make a password',
                  //   ),
                  //   validator: (value) {
                  //     if (value != _repeatPasswordController.text) {
                  //       return 'Password doesn\'t match';
                  //     }
                  //     return Validator.validatePassword(
                  //       password: _passwordController.text,
                  //     );
                  //   },
                  // ),
                  // const SizedBox(height: 12),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter your Password',
                    ),
                    validator: (value) {
                      if (_passwordController.text.isEmpty) {
                        return 'Repeat passwod field is required';
                      } else if (value != _passwordController.text) {
                        return 'Password doesn\'t match';
                      }
                      return null;
                    },
                  ),
                  // const SizedBox(height: 12),
                  // TextFormField(
                  //   controller: _invitationController,
                  //   obscureText: true,
                  //   decoration: const InputDecoration(
                  //     hintText: 'Invitation Code (Optional)',
                  //   ),
                  // ),
                  const SizedBox(height: 12),
                  AppOutlinedButtonPlain(
                    isLoading: loader.isLoading,
                    text: 'Sign up',
                    onTap: isButtonEnabled
                        ? () async {
                            if (_formKey.currentState!.validate()) {
                              RegisterService().userRegistration(
                                _firstNameController.text,
                                _lastNameController.text,
                                _emailController.text,
                                _passwordController.text,
                              );

                              await loader.loader();

                              if (context.mounted) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => RegisterOtpScreen(
                                      email: _emailController.text,
                                    ),
                                  ),
                                );
                              }
                            }
                          }
                        : null,
                  ),
                  const SizedBox(height: 12),
                  AppOutlinedButtonIcon(
                    text: 'Sign up with Google',
                    onTap: () {},
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
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: EVStyles.textPrimary,
                                    fontSize: 11,
                                  ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: EVStyles.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                  ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushReplacement(
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
      ),
    );
  }
}
