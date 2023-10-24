import 'package:flutter/material.dart';
import 'package:shelfx/src/features/chat/screens/chat_screen.dart';
import 'package:shelfx/src/features/home/screens/add_product_screen.dart';
import 'package:shelfx/src/features/home/screens/stores_screen.dart';
import 'package:shelfx/src/utils/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) =>
                states.contains(MaterialState.selected)
                    ? const TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                    : const TextStyle(color: Color(0xffaeb1c4)),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          height: 70,
          backgroundColor: primaryColor,
          indicatorColor: const Color(0xff484f7b),
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.store_rounded,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.store_outlined,
                color: Colors.white,
              ),
              label: 'Сторсы',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.add_circle_outline_rounded,
                color: Colors.white,
              ),
              label: 'Добавить',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.chat_bubble_rounded,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.chat_rounded,
                color: Colors.white,
              ),
              label: 'Чаты',
            ),
          ],
        ),
      ),
      body: <Widget>[
        const StoresScreen(),
        const AddProductScreen(),
        const ChatScreen(),
      ][currentPageIndex],
    );
  }
}
