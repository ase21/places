import 'package:flutter/material.dart';
import 'package:places/ui/screen/custom_appbar.dart';
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
      appBar: const CustomAppBar(
        preferredSize: Size.fromHeight(72),
      ),
      body: Center(
        child: SingleChildScrollView(
          // child: SightDetails(sight: mocks[1]),
          child: Wrap(
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
