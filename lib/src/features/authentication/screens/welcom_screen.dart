import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shelfx/src/features/authentication/screens/login/login_screen.dart';
import 'package:shelfx/src/features/authentication/screens/register/register_screen.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SvgPicture welcomingSvg =
        SvgPicture.asset('assets/images/welcoming.svg', fit: BoxFit.cover);
    SvgPicture cloudSvg =
        SvgPicture.asset('assets/images/cloud.svg', fit: BoxFit.cover);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(alignment: Alignment.topRight, child: cloudSvg),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(child: welcomingSvg),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Добро пожаловать',
                        style: Theme.of(context).textTheme.headlineLarge),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                        'Пройдите аутентификацию Shelf Cloud и пользуйтесь всеми функциями приложения.',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xff151515)),
                        ),
                        onPressed: () => Get.to(() => const LoginScreen()),
                        child: const Text('Вход'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () => Get.to(() => const RegisterScreen()),
                        child: const Text('Регистрация'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
