import 'package:flutter/material.dart';
import 'package:shelfx/src/features/chat/screens/chat_screen.dart';
import 'package:shelfx/src/features/stores/screens/store/store_screen.dart';
import 'package:shelfx/src/features/stores/screens/stores/stores_screen.dart';
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
                    ? const TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w500)
                    : const TextStyle(color: Color(0xff505050)),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          height: 70,
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          surfaceTintColor: const Color.fromARGB(0, 255, 255, 255),
          indicatorColor: primaryColor,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.my_library_books_rounded,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.my_library_books_sharp,
                color: primaryColor,
              ),
              label: 'Список',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.store_rounded,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.store_outlined,
                color: primaryColor,
              ),
              label: 'Сторсы',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.chat_bubble_rounded,
                color: Colors.white,
              ),
              icon: Icon(
                Icons.chat_rounded,
                color: primaryColor,
              ),
              label: 'Чаты',
            ),
          ],
        ),
      ),
      body: <Widget>[
        const StoreScreen(),
        const StoresScreen(),
        const ChatScreen(),
      ][currentPageIndex],
    );
  }
}
