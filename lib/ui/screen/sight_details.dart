import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';

/// экран с детальной информацией о месте
class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({required this.sight, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(minHeight: 150),
          child: Stack(
            children: [
              Image.network(
                sight.url,
                fit: BoxFit.fitHeight,
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
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.fromLTRB(16, 36, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorWhite,
                    image: const DecorationImage(
                      image: ExactAssetImage('assets/icons/Arrow.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                sight.name,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: colorTextDarkGray,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RichText(
                text: TextSpan(style: const TextStyle(fontSize: 14), children: [
                  TextSpan(
                    text: sight.type,
                    style: const TextStyle(
                      color: colorTextDarkGray,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: '  тут будет место работы',
                    style: TextStyle(
                      color: colorTextGray,
                    ),
                  ),
                ]),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  sight.details,
                  textAlign: TextAlign.left,
                  style:
                      const TextStyle(color: colorTextDarkGray, fontSize: 14),
                ),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: colorButtonGreen,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/GO.png',
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'построить маршрут'.toUpperCase(),
                      style: const TextStyle(
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.8,
                margin: const EdgeInsets.symmetric(vertical: 8),
                color: colorBorderGray,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/Calendar.png',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Запланировать',
                            style: TextStyle(
                              color: colorTextGray,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/GrayHeart.png',
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'В Избранное',
                            style: TextStyle(
                              color: colorTextDarkGray,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
