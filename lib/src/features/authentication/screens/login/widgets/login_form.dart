import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shelfx/src/features/authentication/controllers/login_controller.dart';
import 'package:shelfx/src/features/home/screens/home_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextFormField(
            controller: controller.email,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.alternate_email_outlined),
              label: Text('Email'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите email';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller.password,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password_outlined),
              suffixIcon: IconButton(
                  onPressed: null, icon: Icon(Icons.remove_red_eye_sharp)),
              label: Text('Пароль'),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите пароль';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Забыли пароль?', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'С возвращением ${controller.email.text.trim()}'),
                    ),
                  );
                  LoginController.instance.loginUser(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                }
                Get.to(() => const HomeScreen());
              },
              child: const Text(
                'Войти',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text('или используя сервисы',
                style: Theme.of(context).textTheme.bodySmall),
          )
        ],
      ),
    );
  }
}
