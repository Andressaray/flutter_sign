import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  final Function() onPress;
  Button({super.key, required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size.fromHeight(50),
              shape: const StadiumBorder()),
          onPressed: onPress,
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
        ));
  }
}
