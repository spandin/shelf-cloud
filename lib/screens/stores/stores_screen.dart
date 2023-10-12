import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class StoresScreen extends StatefulWidget {
  const StoresScreen({super.key});

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          height: 70,
          indicatorColor: const Color(0xff6660B6),
          backgroundColor: const Color(0xff615BAD),
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) => states
                    .contains(MaterialState.selected)
                ? const TextStyle(color: Colors.white)
                : const TextStyle(color: Color.fromARGB(255, 184, 179, 255)),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home, color: Colors.white),
              icon: Icon(Icons.home_outlined, color: Colors.white),
              label: 'Сторсы',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_bubble, color: Colors.white),
              label: 'Чаты',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.settings_accessibility_outlined),
              icon: Icon(Icons.settings, color: Colors.white),
              label: 'Настройки',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text('Сторсы'),
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              children: [
                const Divider(),
                ElevatedButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pushNamed(context, "/login");
                    },
                    child: const Text('Выйти')),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
