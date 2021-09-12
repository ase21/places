import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';

/// карточка для экрана со списком мест
class SightCard extends StatelessWidget {
  final Sight sight;

  const SightCard({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorCardBackgroundLightGray,
      ),
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              color: colorCardBackgroundGray,
            ),
            padding: const EdgeInsets.all(16),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.type,
                  style: const TextStyle(color: colorWhite, fontSize: 14),
                ),
                Container(
                  color: colorGreen,
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                sight.name,
                style: const TextStyle(color: colorTextDarkGray, fontSize: 16),
              ),
              Text(
                sight.details,
                style: const TextStyle(color: colorTextGray, fontSize: 14),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
