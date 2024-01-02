import 'package:flutter/material.dart';

/// Generates section title for all pages in the App
class WidgetUtils {
  static Widget buildSectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, bottom: 0.0, top: 10.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: text,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
