import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  final Sight _sight;

  const SightCard(this._sight, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              color: Color(0xFF686464),
            ),
            padding: EdgeInsets.all(16),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _sight.type,
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
                ),
                Container(
                  color: Colors.green,
                  height: 20,
                  width: 20,
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _sight.name,
                    style: TextStyle(color: Color(0xFF3B3E5B), fontSize: 16),
                  ),
                  Text(
                    _sight.details,
                    style: TextStyle(color: Color(0xFF7C7E92), fontSize: 14),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
