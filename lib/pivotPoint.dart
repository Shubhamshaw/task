import 'package:flutter/material.dart';

class PivotPoints extends StatelessWidget {
  final String name;
  final double values;
  PivotPoints(this.name, this.values);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:5.0,horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name),
          Text(
            "$values",
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13.5),
          )
        ],
      ),
    );
  }
}
