import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';

/// карточка для экрана со списком посещенных мест
class SightCardAlreadyVisited extends StatelessWidget {
  final Sight sight;

  const SightCardAlreadyVisited({required this.sight, Key? key}) : super(key: key);

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
          Stack(
            children: [
              Container(
                child: Image.network(
                  sight.url,
                  fit: BoxFit.fitWidth,
                  loadingBuilder: (
                    context,
                    child,
                    loadingProgress,
                  ) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                ),
                height: 90,
                width: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sight.type,
                      style: const TextStyle(color: colorWhite, fontSize: 14),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/icons/Share.png',
                          fit: BoxFit.fitHeight,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/icons/WhiteHeart.png',
                          fit: BoxFit.fitHeight,
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.name,
                  style:
                      const TextStyle(color: colorTextDarkGray, fontSize: 16),
                ),
                const Text(
                  'Цель достигнута 14 окт. 2021',
                  style: TextStyle(color: colorTextGray, fontSize: 14),
                ),
                const Text(
                  'закрыто до 09:00',
                  style: TextStyle(color: colorTextGray, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
