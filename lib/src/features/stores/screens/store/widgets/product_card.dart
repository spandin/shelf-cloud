import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shelfx/src/common_widgets/badge.dart';
import 'package:shelfx/src/utils/theme/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      // Specify a key if the Slidable is dismissible.
      key: const ValueKey(0),

      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            autoClose: true,
            onPressed: doNothing,
            foregroundColor: primaryColor,
            icon: Icons.edit,
          ),
          SlidableAction(
            autoClose: true,
            onPressed: doNothing,
            foregroundColor: primaryColor,
            icon: Icons.delete,
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xffF2F4FF),
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        BadgeWidget(
                          label: "Категория",
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        BadgeWidget(
                          label: "Экспорт",
                          icon: Icons.circle,
                        )
                      ],
                    ),
                    Text(
                      '99+ шт.',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Наименование товара',
                          style: Theme.of(context).textTheme.titleLarge),
                      Text('Штрих код',
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('PROD:',
                            style: Theme.of(context).textTheme.titleSmall),
                        Text('00.00.0000',
                            style: Theme.of(context).textTheme.bodySmall)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('EXP:',
                            style: Theme.of(context).textTheme.titleSmall),
                        Text('00.00.0000',
                            style: Theme.of(context).textTheme.bodySmall)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ADD:',
                            style: Theme.of(context).textTheme.titleSmall),
                        Text('00.00.0000',
                            style: Theme.of(context).textTheme.bodySmall)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}
