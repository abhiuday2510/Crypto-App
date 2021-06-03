import 'package:flutter/material.dart';

class MyBlock {
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
                flex: coinType.length > 9 ? 30 : 25,
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
                  flex: coinType.length > 9 ? 37 : 42,
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
}
