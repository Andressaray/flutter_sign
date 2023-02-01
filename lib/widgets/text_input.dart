import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final RegExp _regexEmail = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
  final String value;
  final TextInputType type;
  final String label;
  final String placeholder;
  final IconData icon;
  final bool isPassword;
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
        child: TextFormField(
          initialValue: value,
          obscureText: isPassword,
          style: const TextStyle(color: Colors.white),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your ${label.toLowerCase()}.';
            }
            if (label.toLowerCase().contains('email')) {
              return _regexEmail.hasMatch(value)
                  ? null
                  : 'Please enter a valid email';
            }
            if (isPassword) {
              return value.length < 4
                  ? 'Minimun 4 characters'
                  : value.length > 10
                      ? 'Maximum 10 characters'
                      : null;
            }
            return null;
          },
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.orange),
            labelText: label,
            labelStyle: const TextStyle(color: Colors.orange),
            hintText: placeholder,
            hintStyle: const TextStyle(color: Colors.white60),
            errorStyle: TextStyle(color: Colors.red[500]),
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
