import 'package:flutter/material.dart';

class CustomGoogleButton extends StatelessWidget {
  const CustomGoogleButton({
    required this.image,
    required this.text,
    required this.onPressed,
    super.key,
  });

  final String image;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        minimumSize: const Size(double.infinity, 44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            width: 0.1,
            color: Color(0xFFD0D5DD),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            image,
            height: 24,
            width: 24,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF344054),
                  fontSize: 13,
                ),
          ),
        ],
      ),
    );
  }
}
