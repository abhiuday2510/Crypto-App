import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_crypto/constants.dart';
import 'package:my_crypto/text_field.dart';

class LivePage extends StatefulWidget {
  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text(
              'Live Prices',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Colors.black.withAlpha(200)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: MyTextField(),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: kcoinNwatchlist(
                        insideText: 'All Coins',
                        textClr: Colors.blue,
                        bottiomLineclr: Colors.blue),
                    color: Colors.white,
                    height: 50,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: kcoinNwatchlist(
                        insideText: 'My Watchlist',
                        textClr: Colors.grey.shade500,
                        bottiomLineclr: Colors.white),
                    color: Colors.white,
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            height: 4,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}