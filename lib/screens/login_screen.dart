import 'package:flutter/material.dart';

import 'package:flutter_sign/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  void handleValidate() {
    final FormState? form = _formKey.currentState;
    if (form!.validate()) {
      print('No validado');
    } else {
      print('Validado');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextInput(
                          value: _email,
                          isPassword: false,
                          type: TextInputType.emailAddress,
                          placeholder: 'John@mail.com',
                          label: 'Email',
                          onChange: (v) {
                            setState(() {
                              _email = v;
                            });
                          },
                          icon: Icons.email),
                      TextInput(
                          value: _password,
                          isPassword: true,
                          type: TextInputType.visiblePassword,
                          placeholder: '******',
                          label: 'Password',
                          onChange: (v) {
                            setState(() {
                              _password = v;
                            });
                          },
                          icon: Icons.lock),
                      Button(onPress: () => {}, text: 'Login'),
                      TextButton(
                          onPressed: () => Navigator.pushReplacementNamed(
                              context, 'register'),
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: const Text(
                            'Dont have you an account ?',
                            style: TextStyle(color: Colors.white54),
                          ))
                    ],
                  ))),
        ),
      ),
    );
  }
}
