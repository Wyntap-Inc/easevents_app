import 'package:easevents_app/exports.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton(this.text, this.onTap, {super.key});

  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: AppColors.primaryColor),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.primaryWhite,
      ),
      child: Text(text),
    );
  }
}
