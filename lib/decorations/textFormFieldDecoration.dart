import 'package:flutter/material.dart';

class TextFormFieldDecoration {
  static EdgeInsets padding() {
    return const EdgeInsets.symmetric(
      vertical: 6,
      horizontal: 30,
    );
  }

  static TextStyle style() {
    return const TextStyle(
      color: Color(0xFFFFFFFF),
    );
  }

  static InputDecoration decoration({required String label, required IconData icon}) {
    return InputDecoration(
      prefixIcon: Icon(icon),
      labelText: label,
      border: const OutlineInputBorder(),
      labelStyle: const TextStyle(
        color: Color(0xFFFFFFFF),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFFFFFFF),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFFFFFFF),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      errorStyle: const TextStyle(
        fontSize: 14,
        color: Color(0xFFFF862C),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFFF862C),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFFF862C),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}
