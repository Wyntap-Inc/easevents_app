import 'package:easevents_app/exports.dart';

class ErrorMessageBuilder extends StatelessWidget {
  const ErrorMessageBuilder({required this.status, super.key});

  final String? status;

  @override
  Widget build(BuildContext context) {
    print('Error builder $status');

    return status == 'not-found' ||
            status == 'pending-verification' ||
            status == 'request-denied' ||
            status == 'already-exists'
        ? Padding(
            padding: const EdgeInsets.only(top: 8, left: 16),
            child: Text(
              status == 'already-exists'
                  ? 'User Already Exists'
                  : 'Invalid Email or Password',
              style: const TextStyle(
                color: EVStyles.errorBorderSideColor,
              ),
            ),
          )
        : const SizedBox(width: 0, height: 0);
  }
}
