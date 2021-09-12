import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';

import '../../mocks.dart';

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
          text: TextSpan(
              style: TextStyle(
                  fontSize: 32, color: Color(0xFF252849), height: 1.125),
              children: [
                TextSpan(
                  text: 'Список\n',
                ),
                TextSpan(
                  text: 'интересных мест',
                )
              ]),
        ),
        elevation: 0,
        backgroundColor: Color(0x00000000),
      ),
      body: Center(
        child: SingleChildScrollView(
          // child: SightDetails(sight: mocks[1]),
          child: Column(
            children: [
              SightCard(sight:mocks[0]),
              SightCard(sight:mocks[1]),
              SightCard(sight:mocks[2]),
              SightCard(sight:mocks[1]),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
