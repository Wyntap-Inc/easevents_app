import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.textInputType,
    required this.hintText,
    super.key,
  });

  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        style: Theme.of(context).textTheme.bodyMedium,
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        decoration: const InputDecoration(
          focusColor: Color(0xFF539DF3),
          hintText: 'Enter your email',
        ),
      ),
    );
  }
}
