import 'package:flutter/material.dart';
import 'package:shelfx/src/features/home%20copy/screens/stores_screen.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            snap: false,
            title: Text(
              'Сторсы',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            foregroundColor: Color(0xff151515),
            iconTheme: IconThemeData(color: Color(0xff151515), size: 28),
            leading: Icon(Icons.account_circle),
            leadingWidth: 80,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(24),
              child: Divider(
                height: 1,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList.builder(
            itemBuilder: (context, index) => Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 24)
                  .copyWith(bottom: 16),
              child: const StoreCard(),
            ),
          )
        ],
      ),
    );
  }
}
