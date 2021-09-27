import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/screen/sight_card_already_visited.dart';
import 'package:places/ui/screen/sight_card_want_to_visit.dart';

import 'package:places/mocks.dart';

/// экран со списками избранных мест
class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _VisitingState();
  }
}

class _VisitingState extends State {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Избранное',
              style: TextStyle(
                fontSize: 18,
                color: colorBackgroundDarkGray,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: colorTransparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: colorCardBackgroundLightGray,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: colorTextDarkGray,
                ),
                labelColor: colorWhite,
                unselectedLabelColor: colorBorderGray,
                tabs: const [
                  Tab(
                    child: Text(
                      'Хочу посетить',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Посетил',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SightCardWantToVisit(sight: mocks[0]),
                SightCardWantToVisit(sight: mocks[1]),
              ],
            ),
            Column(
              children: [
                SightCardAlreadyVisited(sight: mocks[2]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
