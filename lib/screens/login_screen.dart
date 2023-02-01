import 'package:flutter/material.dart';
import 'package:flutter_sign/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInput(
                  isPassword: false,
                  type: TextInputType.emailAddress,
                  value: '',
                  placeholder: 'John@mail.com',
                  label: 'Email',
                  onChange: (v) => print(v),
                  icon: Icons.email),
              TextInput(
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  value: '',
                  placeholder: '******',
                  label: 'Password',
                  onChange: (v) => print(v),
                  icon: Icons.lock),
              Button(onPress: () => {}, text: 'Login'),
              TextButton(
                  onPressed: () =>
                      Navigator.pushReplacementNamed(context, 'register'),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: const Text(
                    'Dont have you an account ?',
                    style: TextStyle(color: Colors.white54),
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
