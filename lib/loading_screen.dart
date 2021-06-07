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
    try {
      allblocks.add(await MyBlock(coinAbb: 'BTC').kBlock('images/bitcoin.png'));
      allblocks
          .add(await MyBlock(coinAbb: 'ETH').kBlock('images/ethereum.png'));
      allblocks
          .add(await MyBlock(coinAbb: 'BCH').kBlock('images/bitcoin_cash.png'));
      allblocks
          .add(await MyBlock(coinAbb: 'LTC').kBlock('images/litecoin.gif'));
      allblocks.add(
          await MyBlock(coinAbb: 'DOGE').kBlock('images/dodegcoin.jpg')); //
      allblocks.add(await MyBlock(coinAbb: 'BNB').kBlock('images/binance.png'));
      allblocks.add(await MyBlock(coinAbb: 'KSM').kBlock('images/kusuma.png'));

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LivePage(coinInfo: allblocks);
      }));
    } catch (e) {
      print(e);
    }
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
