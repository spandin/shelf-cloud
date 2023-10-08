import 'package:flutter/material.dart';
import 'package:shelfx/features/function/hex_converter.dart';
import 'package:shelfx/features/user_auth/presentation/pages/organization_page.dart';
import 'package:shelfx/features/user_auth/presentation/pages/register_page.dart';
import 'package:shelfx/features/user_auth/presentation/widgets/form_textField_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  const Text(
                    'Войти в аккаунт',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'используя email и пароль',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const FormTextFiledWidget(
                    hintText: 'Email',
                    isPasswordField: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FormTextFiledWidget(
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
                            primary: HexColor.fromHex('#615BAD'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            minimumSize: const Size.fromHeight(50),
                          ),
                          onPressed: () {
                            if (true) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Выполняется вход')),
                              );
                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OrganizationPage()));
                          },
                          child: const Text('Войти',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'или используя сервисы',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
          Container(
              height: 50,
              decoration: BoxDecoration(
                color: HexColor.fromHex('#615BAD'),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'У вас нет аккаунта?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
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
}
