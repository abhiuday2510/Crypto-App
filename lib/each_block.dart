import 'package:flutter/material.dart';
import 'constants.dart';
import 'networking.dart';

class MyBlock {
  MyBlock({this.coinAbb});
  String coinAbb;

  var coinData;
  AssetImage logo;
  String coinType;
  String price;
  String change;

  Future<Column> kBlock(String img) async {
    coinData = await NetworkHelper().getCoindata(coinAbb);
    coinType = coinData[0]['name'];
    change = coinData[0]['1d']['price_change_pct'].toString();
    price = coinData[0]['price'].toString();
    logo = AssetImage(img);

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
                flex: 37,
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
                  flex: 30,
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 55,
                    child: Text(
                      '₹${double.parse(price).toStringAsFixed(1)}',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                          color: Colors.black.withAlpha(190)),
                    ),
                  )),
              SizedBox(
                width: 7,
              ),
              Expanded(
                  flex: 23,
                  child: Container(
                    height: 38,
                    //color: Colors.orange,
                    child: kchange(double.parse(change)),
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
