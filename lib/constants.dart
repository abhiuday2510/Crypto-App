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
