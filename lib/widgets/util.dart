import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  static void showSaveAlertDialog(
      {required BuildContext context,
      required Function onSave,
      required String title,
      required String content}) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Discard'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Save'),
              onPressed: () {
                Navigator.pop(context);
                onSave();
              },
            ),
          ],
        );
      },
    );
  }

  static Widget buildTextField(
      {required String text,
      required TextEditingController controller,
      required String? Function(String?)? validator}) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 30.0),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: text,
        ),
      ),
    );
  }

  static Widget buildCounterIncrementField(
      {required String label, required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 30.0),
      child: TextFormField(
        validator: nullCheckValidator,
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  static String? nullCheckValidator(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid value';
    }
    return null;
  }

  static String? noOpValidator(value) {
    return null;
  }
}
