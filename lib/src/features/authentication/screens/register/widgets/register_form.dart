import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shelfx/src/features/authentication/controllers/register_controller.dart';
import 'package:shelfx/src/features/home/screens/home_screen.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: controller.fullName,
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_rounded),
              label: Text('Имя'),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите имя';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: controller.email,
            style: const TextStyle(fontSize: 16),
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
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Добро пожаловать ${controller.fullName.text.trim()}'),
                    ),
                  );
                  RegisterController.instance.registerUser(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                }
                Get.to(() => const HomeScreen());
              },
              child: const Text(
                'Зарегистрироваться',
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text('или используя сервисы',
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
