import 'package:flutter/material.dart';
import 'package:my_crypto/livePage_screen.dart';
import 'package:my_crypto/networking.dart';
import 'networking.dart';
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

  void getCoinInfo() async {
    var coinInfo = await NetworkHelper().getCoindata();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LivePage(coinInfo: coinInfo);
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
