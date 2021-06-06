import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_crypto/constants.dart';
import 'package:my_crypto/text_field.dart';

class LivePage extends StatefulWidget {
  LivePage({@required this.coinInfo});
  final coinInfo;

  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    //final isKeyboard=MediaQuery.of(context).viewInsets.bottom!=0;  checks if the keyboard is open or not

    return Scaffold(
      body: SafeArea(
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
                          textClr: Colors.blue.shade600,
                          bottiomLineclr: Colors.blue.shade600),
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
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'COIN NAME',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w600),
                      ),
                      height: 30,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                        height: 30,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Text(
                              'PRICE',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.blue,
                              size: 25,
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'CHANGE',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w600),
                      ),
                      height: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //     height: 60,
            //     padding: EdgeInsets.fromLTRB(15, 0, 18, 0),
            //     child: Column(
            //         //scrollDirection: Axis.vertical,
            //         //shrinkWrap: true,
            //         children: [
            //           kBlock('Bitcoin'),
            //           kBlock('litecoin'),
            //           // kBlock(),
            //           // kBlock(),
            //         ])),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                // controller: ScrollController(initialScrollOffset: 80),
                padding: EdgeInsets.fromLTRB(15, 0, 18, 0),
                shrinkWrap: true,
                children: widget.coinInfo,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: kbottomBar(),
    );
  }
}
