import 'package:easevents_app/exports.dart';

class AppOutlinedButtonPlain extends StatelessWidget {
  const AppOutlinedButtonPlain({
    required this.text,
    required this.onTap,
    this.bgColor = EVStyles.primaryColor,
    this.fgColor = EVStyles.primaryWhite,
    this.isLoading = false,
    super.key,
  });

  final String text;
  final VoidCallback? onTap;
  final Color bgColor;
  final Color fgColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: EVStyles.enabledBorderSideColor,
        ),
        disabledBackgroundColor:
            EVStyles.primaryColor.withAlpha((255 * 0.9).toInt()),
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      child: isLoading
          ? Transform.scale(
              scale: 0.5,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Text(text),
    );
  }
}
