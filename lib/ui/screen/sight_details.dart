import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  final Sight _sight;

  const SightDetails(this._sight, {Key? key}) : super(key: key);

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
                    color: Color(0xFFFFFFFF),
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  _sight.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(0xFF3B3E5B),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                RichText(
                  text: TextSpan(style: TextStyle(fontSize: 14), children: [
                    TextSpan(
                        text: _sight.type,
                        style: TextStyle(
                            color: Color(0xFF3B3E5B),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: '  тут будет место работы',
                      style: TextStyle(color: Color(0xFF7C7E92)),
                    )
                  ]),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    _sight.details,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0xFF3B3E5B), fontSize: 14),
                  ),
                ),
                Container(
                    height: 48,
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF4CAF50),
                    )),
                Container(
                  height: 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  color: Color(0x3D7C7E92),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0x8F7C7E92),
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF3B3E5B),
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
