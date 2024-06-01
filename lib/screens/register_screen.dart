import 'package:easevents_app/utils/validator.dart';

import '../exports.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  final TextEditingController _invitationController = TextEditingController();

  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(checkFields);
    _phoneNumberController.addListener(checkFields);
    _fullNameController.addListener(checkFields);
    _passwordController.addListener(checkFields);
    _repeatPasswordController.addListener(checkFields);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _phoneNumberController.dispose();
    _fullNameController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    _invitationController.dispose();
    super.dispose();
  }

  void checkFields() {
    setState(() {
      isButtonEnabled = _emailController.text.isNotEmpty &&
          _phoneNumberController.text.isNotEmpty &&
          _fullNameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _repeatPasswordController.text.isNotEmpty;
    });
  }

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
                    controller: _emailController,
                    decoration: const InputDecoration(hintText: 'Email'),
                    validator: (_) => Validator.validateEmail(
                      email: _emailController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(hintText: 'Phone number'),
                    validator: (_) => Validator.validatePhoneNumber(
                      phoneNumber: _phoneNumberController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _fullNameController,
                    decoration: const InputDecoration(hintText: 'Full name'),
                    validator: (_) => Validator.validateName(
                      name: _fullNameController.text,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Make a password',
                    ),
                    validator: (value) {
                      if (value != _repeatPasswordController.text) {
                        return 'Password doesn\'t match';
                      }
                      return Validator.validatePassword(
                        password: _passwordController.text,
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _repeatPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter your password again',
                    ),
                    validator: (value) {
                      if (_repeatPasswordController.text.isEmpty) {
                        return 'Repeat passwod field is required';
                      } else if (value != _passwordController.text) {
                        return 'Password doesn\'t match';
                      }
                      return null;
                    },
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
                    onTap: isButtonEnabled
                        ? () {
                            if (_formKey.currentState!.validate()) {}
                          }
                        : null,
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
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: AppStyles.textPrimary,
                                    fontSize: 11,
                                  ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: AppStyles.primaryColor,
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
