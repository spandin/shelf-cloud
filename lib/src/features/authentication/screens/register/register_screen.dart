import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shelfx/src/features/authentication/screens/register/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SvgPicture cloudSvg =
        SvgPicture.asset('assets/images/cloud.svg', fit: BoxFit.cover);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            child: Align(alignment: Alignment.topRight, child: cloudSvg),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                  child: Icon(Icons.arrow_back, size: 24),
                ),
                Text('Зарегистрироваться',
                    style: Theme.of(context).textTheme.headlineMedium),
                Text('используя Email и Пароль',
                    style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(
                  height: 15,
                ),
                const RegisterForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
