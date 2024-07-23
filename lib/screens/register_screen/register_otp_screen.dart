import 'package:cool_alert/cool_alert.dart';
import 'package:easevents_app/exports.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class RegisterOtpScreen extends StatelessWidget {
  RegisterOtpScreen({super.key});

  static const routeName = 'otp';

  final TextEditingController _otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void showOtpSucces(BuildContext context) {
    CoolAlert.show(
      context: context,
      type: CoolAlertType.success,
      backgroundColor: AppStyles.primaryColor,
      borderRadius: 10,
      text: 'Account Creation Success',
      confirmBtnColor: AppStyles.primaryColor,
    );
  }

  @override
  Widget build(BuildContext context) {
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
                    'Enter your verification code',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'We will sent an One Time Passcode\nvia this mail@gmail.com email address.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 20),
                  OtpTextField(
                    keyboardType: TextInputType.text,
                    alignment: Alignment.center,
                    numberOfFields: 6,
                    autoFocus: true,
                    contentPadding: EdgeInsets.zero,
                    borderWidth: 1,
                    filled: true,
                    fieldHeight: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    borderColor: AppStyles.primaryColor,
                    enabledBorderColor: AppStyles.textSecondary,
                    focusedBorderColor: AppStyles.primaryColor,
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
                                    color: AppStyles.textPrimary,
                                    fontSize: 11,
                                  ),
                        ),
                        TextSpan(
                          text: 'Resend code',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: AppStyles.primaryColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                  ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => showOtpSucces(context),
                    child: const Text('Verify OTP'),
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
