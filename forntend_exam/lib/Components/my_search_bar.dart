import 'package:flutter/material.dart';

import '../Styles/app_styles.dart';

class MySearchBar extends StatelessWidget {
  final String hintText;

  const MySearchBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2, color: Styles.textFieldColor),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
        prefixIcon: const Icon(Icons.search),
        prefixIconColor: Styles.text1Color,
        hintText: hintText,
        hintStyle: Styles.textFieldStyle,
      ),
      style: const TextStyle(),
    );
  }
}
