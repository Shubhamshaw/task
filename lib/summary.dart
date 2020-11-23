import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_4.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5))),
                height: 100,
                width: 10,
              ),
              Container(
                height: 100,
                width: 10,
                color: Colors.blueAccent[100],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 10,
                    color: Colors.grey[700],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ChatBubble(
                        
                        child: Text(
                          "Neutral",
                          style: TextStyle(color: Colors.white),
                        ),
                        backGroundColor: Colors.grey[700],
                        clipper:
                            ChatBubbleClipper4(type: BubbleType.receiverBubble),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 100,
                width: 10,
                color: Colors.pink[300],
              ),
              Container(
                height: 100,
                width: 10,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5))),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3, //                   <--- border width here
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7))
                  ), //             <--- BoxDecoration here
                  child: Text(
                    "1 MIN",
                    style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "5 MIN",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "10 MIN",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "30 MIN",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1 HR",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "5 HR",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1 DAY",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1 WK",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1 MON",
                  style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
