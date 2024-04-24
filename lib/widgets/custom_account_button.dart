import 'package:flutter/material.dart';

class CustomAccountButton extends StatelessWidget {
  const CustomAccountButton({
    required this.text,
    required this.onTap,
    required this.textButton,
    super.key,
  });

  final String text;
  final String textButton;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(width: 5),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: onTap,
          child: Text(
            'Log in',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: const Color(0xFF539DF3),
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
          ),
        ),
      ],
    );
  }
}
