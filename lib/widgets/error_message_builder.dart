import 'package:easevents_app/exports.dart';

class ErrorMessageBuilder extends StatelessWidget {
  const ErrorMessageBuilder({required this.status, super.key});

  final String? status;

  @override
  Widget build(BuildContext context) {
    // print('Error builder $status');

    return status == null
        ? const SizedBox(width: 0, height: 0)
        : errorTextBuilder(errorBuilder(status));
  }

  String errorBuilder(String? status) {
    String? currentStatus;

    switch (status) {
      case 'not-found':
        {
          currentStatus = 'Invalid Email or Password';
        }
      case 'pending-verification':
        {
          currentStatus = 'Invalid Email or Password';
        }
      case 'request-denied':
        {
          currentStatus = 'Invalid Email or Password';
        }
      case 'already-exists':
        {
          currentStatus = 'User Already Exists';
        }
      case 'internal-server-error':
        {
          currentStatus =
              'This account is associated with Google Sign-In. Please use Continue with Google to log in';
        }
      default:
    }

    return currentStatus ?? '';
  }

  Widget errorTextBuilder(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16),
      child: Text(
        text,
        style: const TextStyle(
          color: EVStyles.errorBorderSideColor,
        ),
      ),
    );
  }
}
