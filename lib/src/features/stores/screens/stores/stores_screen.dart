import 'package:flutter/material.dart';
import 'package:shelfx/src/common_widgets/account_icon.dart';
import 'package:shelfx/src/features/stores/screens/stores/widgets/store_card.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            snap: false,
            title: Text(
              'Сторсы',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            leading: const AccountIcon(
              size: 26,
            ),
            leadingWidth: 80,
            bottom: const PreferredSize(
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
