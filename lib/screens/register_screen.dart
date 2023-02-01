import 'package:flutter/material.dart';
import 'package:flutter_sign/router/app_routes.dart';

import 'package:flutter_sign/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  void handleLogin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextInput(
                value: '',
                type: TextInputType.text,
                placeholder: 'John Doe',
                label: 'Name',
                icon: Icons.person,
                isPassword: false,
                onChange: (v) {
                  print(v);
                }),
            TextInput(
                value: '',
                type: TextInputType.emailAddress,
                placeholder: 'John@mail.com',
                label: 'Email',
                icon: Icons.mail,
                isPassword: false,
                onChange: (v) {
                  print(v);
                }),
            TextInput(
                value: '',
                type: TextInputType.text,
                placeholder: '******',
                label: 'Password',
                icon: Icons.person,
                isPassword: true,
                onChange: (v) {
                  print(v);
                }),
            Button(onPress: () => {}, text: 'REGISTER'),
            TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, 'login'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: const Text(
                  'Have you an account ?',
                  style: TextStyle(color: Colors.white54),
                ))
          ],
        ),
      )),
    );
  }
}
