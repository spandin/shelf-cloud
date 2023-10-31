class RegisterWithEmailAndPasswordFailure {
  final String message;

  const RegisterWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured."]);

  factory RegisterWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const RegisterWithEmailAndPasswordFailure(
            'Введите боле надежный пароль');
      case 'invalid-email':
        return const RegisterWithEmailAndPasswordFailure(
            'Введите коректный формат email');
      case 'email-already-in-use':
        return const RegisterWithEmailAndPasswordFailure(
            'Данный email уже зарегистрирован');
      case 'operation-not-allowed':
        return const RegisterWithEmailAndPasswordFailure('Запрос не выполнен.');
      case 'user-disabled':
        return const RegisterWithEmailAndPasswordFailure(
            'Данный пользователь отключен');
      default:
        return const RegisterWithEmailAndPasswordFailure();
    }
  }
}
