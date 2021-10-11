import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_details.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/res/themes.dart';
import 'package:places/ui/screen/visiting_screen.dart';

int globalCount = 0;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(title: 'HomePage'),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({required this.title, Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BottomNavigationState();
  }
}

class BottomNavigationState extends State with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: const [
          SightListScreen(),
          VisitingScreen(),
        ],
        controller: tabController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabController.index,
        onTap: (value) => tabController.animateTo(value),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/List.png'),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/HeartFull.png'),
            label: 'Visiting',
          ),
        ],
      ),
    );
  }
}
