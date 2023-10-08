import 'package:flutter/material.dart';
import 'package:shelfx/features/function/hex_converter.dart';
import 'package:shelfx/features/user_auth/presentation/pages/login_page.dart';
import 'package:shelfx/features/user_auth/presentation/widgets/form_textField_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Transform.translate(
          offset: const Offset(25, 15),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: HexColor.fromHex('#615BAD'),
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
                  const Text(
                    'Зарегистрироваться ',
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
                                const SnackBar(content: Text('Регистрация...')),
                              );
                            }
                          },
                          child: const Text('Зарегистрироваться',
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
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
