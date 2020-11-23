import 'package:flutter/material.dart';
import 'package:task/model/movingavgdata.dart';
import 'package:task/model/pivot.dart';
import 'package:task/model/technical.dart';
import 'package:task/movingavg.dart';
import 'package:task/indicator.dart';
import 'package:task/pivotPoint.dart';
import 'package:task/summary.dart';

class Initial extends StatelessWidget {
  final avg = [
    AverageData("MA10", 465.78, "SELL"),
    AverageData("MA20", 465.78, "BUY"),
    AverageData("MA50", 465.78, "BUY"),
    AverageData("MA100", 465.78, "SELL"),
    AverageData("MA200", 465.78, "BUY"),
  ];
  final tech = [
    Technical("RSI(14)", -53.6549, "Neutral"),
    Technical("STOCH(9,4)", -53.6549, "Sell"),
    Technical("STOCHRSI(14)", -53.6549, "Sell"),
    Technical("MACD(12,26)", -53.6549, "Buy"),
    Technical("ADX(14)", -53.6549, "Sell"),
    Technical("CCI(14)", -53.6549, "Sell"),
    Technical("ATR(14)", -53.6549, "Sell"),
    Technical("Highs/Lows(14)", -53.6549, "Sell"),
    Technical("Ultimate Oscillator", -53.6549, "Sell"),
    Technical("Bull/Bear Power(13)", -53.6549, "Less Volatility"),
  ];
  final pivot = [
    Pivot("S3", 456.87),
    Pivot("S2", 456.87),
    Pivot("S1", 456.87),
    Pivot("PIVOTS POINT", 456.87),
    Pivot("R1", 456.87),
    Pivot("R2", 456.87),
    Pivot("R3", 456.87),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Sensex",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Center(
                child: Text(
                  "Summary",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19.5),
                ),
              ),
            ],
          ),
          Summary(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Moving Averages",
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 19.5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 30,
                      width: 60,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Buy",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "7",
                            style: TextStyle(
                                fontSize: 18.5, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Buy",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "-",
                            style: TextStyle(
                                fontSize: 18.5, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Neutral",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                                fontSize: 18.5, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "Sell",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 600,
                  height: 25,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TITLE",
                          style: TextStyle(
                              fontSize: 13.5,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "VALUE",
                          style: TextStyle(
                              fontSize: 13.5,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "TYPE",
                          style: TextStyle(
                              fontSize: 13.5,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) => MovingAVG(
                    avg[index].title, avg[index].values, avg[index].type),
                itemCount: avg.length,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Center(
                child: Text(
                  "Technical Indicators",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 30,
                    width: 100,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Strong Sell",
                        style: TextStyle(fontSize: 13.5, color: Colors.white),
                      ),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 18.5, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Buy",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "1",
                          style: TextStyle(
                              fontSize: 18.5, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Neutral",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "9",
                          style: TextStyle(
                              fontSize: 18.5, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Sell",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 600,
                  height: 25,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "NAME",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "ACTION",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "VALUE",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) => Indicator(
                    tech[index].name, tech[index].action, tech[index].value),
                itemCount: tech.length,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Center(
                child: Text(
                  "Pivot Points",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 19.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) =>
                PivotPoints(pivot[index].name, pivot[index].value),
            itemCount: pivot.length,
          ),
        ],
      ),
    );
  }
}
