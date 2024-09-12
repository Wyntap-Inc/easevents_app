import 'package:easevents_app/exports.dart';

class AppOutlinedButtonIcon extends StatelessWidget {
  const AppOutlinedButtonIcon({
    required this.text,
    required this.onTap,
    required this.iconData,
    this.fgColor = EVStyles.primaryColor,
    super.key,
  });

  final String text;
  final VoidCallback onTap;
  final Widget iconData;
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
      label: Text(text),
      icon: iconData,
    );
  }
}
