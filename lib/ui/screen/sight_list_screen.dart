import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';

import 'package:places/mocks.dart';

/// экран со списком мест
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        title: RichText(
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
        elevation: 0,
        backgroundColor: colorWhite,
      ),
      body: Center(
        child: SingleChildScrollView(
          // child: SightDetails(sight: mocks[1]),
          child: Column(
            children: [
              SightCard(sight: mocks[0]),
              SightCard(sight: mocks[1]),
              SightCard(sight: mocks[2]),
              SightCard(sight: mocks[1]),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
