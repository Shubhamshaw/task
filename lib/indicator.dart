import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final String name;
  final double action;
  final String value;
  Indicator(this.name, this.action, this.value);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
      child: Row(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12.5),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              "$action",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12.5),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.3,
            child: Text(
              value,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 12.5,
                  color: value=="Sell"?Colors.pink:value=="Buy"?Colors.blue:value=="Neutral"?Colors.grey:Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
