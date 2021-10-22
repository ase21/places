import 'package:flutter/material.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/styles.dart';
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
          title: Center(
            child: Text(
              favoriteString,
              style: regular18,
            ),
          ),
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TabBar(
                tabs:  [
                  Tab(
                    child: Text(
                      wantToVisitString,
                    ),
                  ),
                  Tab(
                    child: Text(
                      alreadyVisitedString,
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
