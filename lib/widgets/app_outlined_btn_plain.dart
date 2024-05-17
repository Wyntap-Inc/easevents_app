import 'package:easevents_app/exports.dart';

class AppOutlinedButtonPlain extends StatelessWidget {
  const AppOutlinedButtonPlain({
    required this.text,
    required this.onTap,
    this.bgColor = AppStyles.primaryColor,
    this.fgColor = AppStyles.primaryWhite,
    super.key,
  });

  final String text;
  final VoidCallback onTap;
  final Color bgColor;
  final Color fgColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: bgColor == AppStyles.primaryColor
              ? AppStyles.primaryColor
              : AppStyles.enabledBorderSideColor,
        ),
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(text),
    );
  }
}
