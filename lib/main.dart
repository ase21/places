import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_list_screen.dart';

int globalCount = 0;
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SightListScreen(),
    );
  }
}