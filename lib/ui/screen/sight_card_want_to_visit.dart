import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/styles.dart';

/// карточка для экрана желаемых к посещению мест
class SightCardWantToVisit extends StatelessWidget {
  final Sight sight;

  const SightCardWantToVisit({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).backgroundColor,
      ),
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
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
                      style: const TextStyle(color: lightModePrimaryColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          calendarWhiteImage,
                          fit: BoxFit.fitHeight,
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          whiteHeartImage,
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
                  style: regular16,
                ),
                Text(
                  'Запланировано на 12 окт. 2020',
                  style: greenRegular14,
                ),
                Text(
                  'закрыто до 09:00',
                  style: grayRegular14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}