import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String value;
  TextInputType type = TextInputType.text;
  String label;
  String placeholder;
  IconData icon;
  bool isPassword = false;
  final Function(String) onChange;

  TextInput({
    super.key,
    required this.value,
    required this.type,
    required this.placeholder,
    required this.label,
    required this.icon,
    required this.isPassword,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: TextField(
          obscureText: isPassword,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.orange),
            labelText: label,
            labelStyle: const TextStyle(color: Colors.orange),
            hintText: placeholder,
            hintStyle: const TextStyle(color: Colors.white60),
            focusColor: Colors.orange,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.orange),
            ),
          ),
          onChanged: onChange,
          keyboardType: type,
        ));
  }
}
