import 'package:flutter/material.dart';

class OrganizationPage extends StatelessWidget {
  const OrganizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Организации'),
        ),
        body: const Center(
          child: Text('Вы пока не стоите в организациях'),
        ));
  }
}
