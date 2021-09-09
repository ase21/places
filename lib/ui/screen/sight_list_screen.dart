import 'package:flutter/material.dart';

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
                TextSpan(children: [
                  TextSpan(
                    text: 'c'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  TextSpan(
                    text: 'писок\n',
                  ),
                ]),
                TextSpan(children: [
                  TextSpan(
                    text: 'и',
                    style: TextStyle(
                      color: Colors.yellow,
                    ),
                  ),
                  TextSpan(
                    text: 'нтересных мест',
                  )
                ])
              ]),
        ),
        elevation: 0,
        backgroundColor: Color(0x00000000),
      ),
      body: Center(
        child: TextField(),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
