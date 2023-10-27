import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shelfx/src/features/account/screens/account.dart';
import 'package:shelfx/src/utils/theme/theme.dart';

class AccountIcon extends StatelessWidget {
  final double? size;

  const AccountIcon({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const AccountScreen()),
      child: Icon(Icons.account_circle, size: size, color: primaryColor),
    );
  }
}
