import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:shelfx/screens/auth/firebase_auth/firebase_auth_service.dart';

import 'package:shelfx/screens/auth/widgets/form_textfield.dart';

import 'package:shelfx/screens/auth/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSigning = false;

  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [],
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Text('Войти в аккаунт',
                      style: Theme.of(context).textTheme.headlineLarge),
                  Text('используя email и пароль',
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(
                    height: 15,
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              minimumSize: const Size.fromHeight(50),
                              backgroundColor: const Color(0xff58539B)),
                          onPressed: () {
                            _signIn();
                          },
                          child: Text('Войти',
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
          Container(
              height: 50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(3, 0),
                  colors: <Color>[
                    Color.fromRGBO(97, 91, 173, 1),
                    Color.fromRGBO(88, 82, 150, 1),
                  ],
                  tileMode: TileMode.mirror,
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('У вас нет аккаунта?',
                      style: Theme.of(context).textTheme.displaySmall),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()));
                    },
                    child: const Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is successfully signedIn");
      Navigator.pushNamed(context, "/shops");
    } else {
      print("Some error happend");
    }
  }
}
