import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column kcoinNwatchlist(
    {String insideText, Color bottiomLineclr, Color textClr}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        insideText,
        style: TextStyle(
          fontSize: 18,
          color: textClr,
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        color: bottiomLineclr,
        height: 3,
      )
    ],
  );
}

Column kBlock({String coinType, AssetImage logo, String abbriviation}) {
  return Column(
    children: [
      Container(
        height: 1,
        color: Colors.grey,
      ),
      SizedBox(
        height: 5,
      ),
      Card(
        margin: EdgeInsets.all(0),
        elevation: 0,
        child: Row(
          children: [
            Expanded(
                flex: 14,
                child: Container(
                  height: 50,
                  child: CircleAvatar(
                    radius: 1,
                    backgroundImage: logo,
                  ),
                )),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 25,
              child: Container(
                height: 59,
                child: Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        coinType,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        abbriviation,
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 42,
                child: Container(
                  height: 59,
                  color: Colors.yellow,
                )),
            Expanded(
                flex: 19,
                child: Container(
                  height: 59,
                  color: Colors.orange,
                )),
          ],
        ),
      ),
      SizedBox(
        height: 5,
      ),
    ],
  );
}

BottomNavigationBar kbottomBar() {
  return BottomNavigationBar(
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
    unselectedFontSize: 12,
    iconSize: 28,
    type: BottomNavigationBarType.fixed,
    currentIndex: 1, // this will be set when a new tab is tapped
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.stacked_bar_chart),
        label: 'PRICES',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_balance_wallet),
        label: 'INVESTMENTS',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'ACCOUNT',
      ),
    ],
  );
}
