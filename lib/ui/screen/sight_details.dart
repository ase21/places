import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  const SightDetails({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 360,
            color: Color(0xFF252849),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 32,
                  width: 32,
                  margin: EdgeInsets.fromLTRB(16, 36, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorWhite,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  sight.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: colorTextDarkGray,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                RichText(
                  text: TextSpan(style: TextStyle(fontSize: 14), children: [
                    TextSpan(
                        text: sight.type,
                        style: TextStyle(
                            color: colorTextDarkGray,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: '  тут будет место работы',
                      style: TextStyle(color: colorTextGray),
                    )
                  ]),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    sight.details,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: colorTextDarkGray, fontSize: 14),
                  ),
                ),
                Container(
                    height: 48,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: colorButtonGreen,
                    )),
                Container(
                  height: 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  color: colorBorderGray,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: colorTextGray,
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: colorTextDarkGray,
                        )),
                  )
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
