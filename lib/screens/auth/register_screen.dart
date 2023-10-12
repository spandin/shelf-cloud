import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shelfx/screens/auth/firebase_auth/firebase_auth_service.dart';

import 'package:shelfx/screens/auth/widgets/form_textfield.dart';

import 'package:shelfx/screens/auth/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform.translate(
          offset: const Offset(25, 15),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff615BAD),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Text('Зарегистрироваться ',
                      style: Theme.of(context).textTheme.headlineLarge),
                  Text('используя email и пароль',
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 15,
                  ),
                  FormTextFiledWidget(
                    controller: _usernameController,
                    hintText: 'Имя',
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FormTextFiledWidget(
                    controller: _emailController,
                    hintText: 'Email',
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FormTextFiledWidget(
                    controller: _passwordController,
                    hintText: 'Пароль',
                    isPasswordField: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff615BAD),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          onPressed: () {
                            _registerUser();
                          },
                          child: Text('Зарегистрироваться',
                              style: Theme.of(context).textTheme.displayMedium),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text('или используя сервисы',
                      style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            ),
          ),
          Container()
        ],
      ),
    );
  }

  void _registerUser() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully created");
      Navigator.pushNamed(context, "/shops");
    } else {
      print("Some error happend");
    }
  }
}
