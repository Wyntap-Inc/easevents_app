import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            endIndent: 10,
            color: Color(0xFFEAECF0),
            thickness: 1,
          ),
        ),
        Text(
          'or',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: const Color(0xFF667085),
                fontSize: 13,
              ),
        ),
        const Expanded(
          child: Divider(
            indent: 10,
            color: Color(0xFFEAECF0),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
