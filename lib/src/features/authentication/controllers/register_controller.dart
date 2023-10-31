import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shelfx/src/repository/authentication_repository/authentication_repository.dart';

class RegisterController extends GetxController {
  static RegisterController get instance => Get.find();

  final fullName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
