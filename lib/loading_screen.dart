import 'package:flutter/material.dart';
import 'package:my_crypto/livePage_screen.dart';
import 'each_block.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getCoinInfo();
  }

  List<Column> allblocks = [];

  void getCoinInfo() async {
    allblocks.add(await MyBlock(coinAbb: 'BTC').kBlock());
    allblocks.add(await MyBlock(coinAbb: 'ETH').kBlock());
    allblocks.add(await MyBlock(coinAbb: 'BCH').kBlock());
    allblocks.add(await MyBlock(coinAbb: 'LTC').kBlock());
    allblocks.add(await MyBlock(coinAbb: 'DOGE').kBlock());
    allblocks.add(await MyBlock(coinAbb: 'BNB').kBlock());
    allblocks.add(await MyBlock(coinAbb: 'KSM').kBlock());

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LivePage(coinInfo: allblocks);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.black,
          size: 100,
        ),
      ),
    );
  }
}
