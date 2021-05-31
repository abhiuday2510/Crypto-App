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
      Container(
        color: bottiomLineclr,
        height: 1.5,
      )
    ],
  );
}
