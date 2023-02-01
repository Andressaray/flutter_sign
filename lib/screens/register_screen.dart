import 'package:flutter/material.dart';

import 'package:flutter_sign/widgets/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  void handleLogin() {}

  void validateAndSave() {
    final FormState? form = _formKey.currentState;
    print(_email);
    if (form!.validate()) {
      print('Form is valid');
    } else {
      print('Form is invalid');
    }
  }

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
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextInput(
                        value: _name,
                        type: TextInputType.text,
                        placeholder: 'John Doe',
                        label: 'Name',
                        icon: Icons.person,
                        isPassword: false,
                        onChange: (v) {
                          setState(() {
                            _name = v;
                          });
                        }),
                    TextInput(
                        value: _email,
                        type: TextInputType.emailAddress,
                        placeholder: 'John@mail.com',
                        label: 'Email',
                        icon: Icons.mail,
                        isPassword: false,
                        onChange: (v) {
                          setState(() {
                            _email = v;
                          });
                        }),
                    TextInput(
                        value: _password,
                        type: TextInputType.text,
                        placeholder: '******',
                        label: 'Password',
                        icon: Icons.person,
                        isPassword: true,
                        onChange: (v) {
                          setState(() {
                            _password = v;
                          });
                        }),
                    Button(onPress: validateAndSave, text: 'REGISTER'),
                    TextButton(
                        onPressed: () =>
                            Navigator.pushReplacementNamed(context, 'login'),
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const Text(
                          'Have you an account ?',
                          style: TextStyle(color: Colors.white54),
                        ))
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
