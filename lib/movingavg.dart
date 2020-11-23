import 'package:flutter/material.dart';

class MovingAVG extends StatelessWidget {
 final String title;
 final double value;
 final String type;
  MovingAVG(this.title, this.value, this.type);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Row(
        children: [
          Container(
             alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width * 0.3,
           
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.5),
            ),
          ),
          Container(
             alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.3,
           
            child: Text(
              "$value",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15.5),
            ),
          ),
          Container(
             alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.3,
           
            child: Text(
              type,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15.5,
                  color: type == "SELL" ? Colors.pink : Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
