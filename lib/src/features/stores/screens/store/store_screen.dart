import 'package:flutter/material.dart';
import 'package:shelfx/src/features/stores/screens/store/widgets/product_card.dart';
import 'package:shelfx/src/utils/theme/theme.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            snap: true,
            floating: true,
            title: const Text(
              'Название магазина',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            foregroundColor: primaryColor,
            iconTheme: const IconThemeData(color: primaryColor, size: 28),
            leading: const Icon(Icons.account_circle),
            leadingWidth: 80,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(76),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 24),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(6)),
                    child: const Row(
                      children: [
                        Icon(Icons.search_rounded, color: Colors.white),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Поиск',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList.builder(
            itemBuilder: (context, index) => Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 0)
                  .copyWith(bottom: 16),
              child: const ProductCard(),
            ),
          )
        ],
      ),
    );
  }
}
