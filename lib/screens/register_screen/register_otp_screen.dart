import 'package:easevents_app/exports.dart';

class RegisterOtpScreen extends StatelessWidget {
  RegisterOtpScreen({this.email, super.key});

  static const routeName = 'otp';

  final String? email;

  final TextEditingController _otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loader = Provider.of<LoaderProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Verify Your Email Address',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Please enter the 6 digit code we sent to',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email == null ? 'example@email.com' : email!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                  ),
                  const SizedBox(height: 20),
                  OtpTextField(
                    inputFormatters: [UppercaseInputFormatter()],
                    keyboardType: TextInputType.text,
                    alignment: Alignment.center,
                    numberOfFields: 6,
                    autoFocus: true,
                    contentPadding: EdgeInsets.zero,
                    borderWidth: 1,
                    filled: true,
                    fieldHeight: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    borderColor: EVStyles.primaryColor,
                    enabledBorderColor: EVStyles.textSecondary,
                    focusedBorderColor: EVStyles.primaryColor,
                    showFieldAsBox: true,
                    onCodeChanged: (value) {},
                    onSubmit: (value) {
                      _otpController.text = value;
                    },
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Didn\'t get it?  ',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: EVStyles.textPrimary,
                                    fontSize: 11,
                                  ),
                        ),
                        TextSpan(
                          text: 'Resend code',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: EVStyles.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                  ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  AppOutlinedButtonPlain(
                    isLoading: loader.isLoading,
                    onTap: () async {
                      VerifyRegistration()
                          .verifyUserRegistration(_otpController.text);

                      await loader.loader();

                      if (context.mounted) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RegisterSuccessScreen.routeName, (route) => false);
                      }
                    },
                    text: 'Verify OTP',
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Change the email address',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
