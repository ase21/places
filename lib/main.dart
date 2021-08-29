import 'package:flutter/material.dart';

int globalCount = 0;
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstWidget(),
      title: 'FirstTitle',
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);

  int count = 0;

  @override
  Widget build(BuildContext context) {
    count++;
    print('Stateless счетчик:$count');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }

  // Type returnContextRuntimeType() {
  //   return context.runtimeType;
  // }
}

class MySecondWidget extends StatefulWidget {
  const MySecondWidget({Key? key}) : super(key: key);

  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    count++;
    print('Stateful счетчик:$count');
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }
  

  Type returnContextRuntimeType() {
    return context.runtimeType;
  }
}
