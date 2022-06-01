
import 'package:flutter/material.dart';

class TextAreaTextField extends StatelessWidget {
  final String hint;
  final bool readOnly;
  TextAreaTextField({required this.hint,required this.controller, required this.readOnly});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fillup';
        }
        return null;
      },
      keyboardType: TextInputType.multiline,
      // textInputAction: TextInputAction.newline,
      minLines: 1,
      maxLines: 3,
      readOnly: readOnly,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 60.0, horizontal: 12.0),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(8),
          ),
        focusedBorder: InputBorder.none,
        filled: true,
        fillColor: const Color(0xFFF7F8F8)
        //fillColor: Color(0xFF0000C7)

      ),
    );
  }
}