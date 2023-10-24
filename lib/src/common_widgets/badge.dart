import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  final String label;
  final double? radius;
  final IconData? icon;

  const BadgeWidget({super.key, required this.label, this.radius, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius ?? 5.0),
        border: Border.all(
          color: const Color(0xffF2F4FF),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Row(
        children: [
          icon != null
              ? Row(
                  children: [
                    Icon(
                      icon,
                      size: 8,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      label,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                )
              : Text(
                  label,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
        ],
      ),
    );
  }
}
