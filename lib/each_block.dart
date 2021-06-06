import 'package:flutter/material.dart';
import 'constants.dart';
import 'networking.dart';

class MyBlock {
  MyBlock({this.coinAbb});
  String coinAbb;

  var coinData;

  String coinType;
  NetworkImage logo;
  String price;
  String change;

  Future<Column> kBlock() async {
    coinData = await NetworkHelper().getCoindata(coinAbb);
    coinType = coinData[0]['name'];
    change = coinData[0]['1d']['price_change_pct'].toString();
    price = coinData[0]['price'].toString();
    logo = NetworkImage('${coinData[0]['logo_url']}');

    return Column(
      children: [
        Container(
          height: 1.5,
          color: Colors.grey.shade200,
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
                          coinAbb,
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
                    child: Text(price),
                  )),
              Expanded(
                  flex: 19,
                  child: Container(
                    height: 35,
                    //color: Colors.orange,
                    child: kchange(change),
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
