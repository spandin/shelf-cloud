import 'package:flutter/material.dart';
import 'package:shelfx/src/common_widgets/account_icon.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Имя',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        leading: const Icon(Icons.arrow_back),
        leadingWidth: 80,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 40, bottom: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
              child: AccountIcon(
                size: 100,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Выйти'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
