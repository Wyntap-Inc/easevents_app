import 'package:easevents_app/exports.dart';

class EmailVerificationScreen extends StatelessWidget {
  EmailVerificationScreen({super.key});

  final TextEditingController _otpController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 16, right: 16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 240,
                  child: Lottie.asset(
                    filterQuality: FilterQuality.high,
                    addRepaintBoundary: true,
                    repeat: false,
                    'assets/animated_json/email.json',
                  ),
                ),
                Text(
                  'Check your mail',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 15),
                Text(
                  'We have sent a verification code to reset your password.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
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
                const SizedBox(height: 15),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Resend code',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: EVStyles.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                            ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                AppOutlinedButtonPlain(
                  text: 'Verify email',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangePasswordScreen(),
                      ),
                    );
                  },
                ),
                const Spacer(),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Did not receive email? check your spam filter,\n',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: 'or try another email address',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: EVStyles.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              height: 2,
                            ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
