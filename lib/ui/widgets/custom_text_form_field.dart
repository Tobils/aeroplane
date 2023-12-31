import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hint;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFormField({
    super.key,
    required this.title,
    this.hint = "",
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: const BorderSide(color: kPrimaryColor))),
          )
        ],
      ),
    );
  }
}
