import 'package:easevents_app/exports.dart';

class AppOutlinedButtonIcon extends StatelessWidget {
  const AppOutlinedButtonIcon({
    required this.text,
    required this.onTap,
    required this.iconData,
    this.isLoading = false,
    this.fgColor = EVStyles.primaryColor,
    super.key,
  });

  final String text;
  final VoidCallback onTap;
  final Widget iconData;
  final bool isLoading;
  final Color fgColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: EVStyles.enabledBorderSideColor,
        ),
        foregroundColor: fgColor,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      label: isLoading
          ? Transform.scale(
              scale: 0.5,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Text(text),
      icon: isLoading ? null : iconData,
    );
  }
}
