import 'package:flutter/material.dart';
import 'package:shelfx/src/utils/theme/theme.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            snap: true,
            floating: true,
            title: const Text(
              'Сторсы',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.white),
            leading: const Icon(Icons.account_circle),
            leadingWidth: 80,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(76),
              child: Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                    color: Theme.of(context).hintColor.withOpacity(0.1),
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

class StoreCard extends StatelessWidget {
  const StoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffebebf0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  print('object');
                },
                child: const Text(
                  'Название стора',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff404040),
                  ),
                ),
              ),
              const Icon(
                Icons.star_rate_rounded,
                color: Color(0xff343B6C),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xff343B6C),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'адрес стора',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff404040),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Icon(
                Icons.bar_chart,
                color: Color(0xff343B6C),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'количество позиций',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff404040),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.supervised_user_circle,
                color: Color(0xff343B6C),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '0 участников',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff404040),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
