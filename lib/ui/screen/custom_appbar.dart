import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({
    required this.preferredSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(preferredSize),
      child: RichText(
        textAlign: TextAlign.left,
        text: const TextSpan(
          style: TextStyle(
            fontSize: 32,
            color: colorTextDarkGray,
            height: 1.125,
          ),
          children: [
            TextSpan(
              text: 'Список\n',
            ),
            TextSpan(
              text: 'интересных мест',
            ),
          ],
        ),
      ),
    );
  }
}
