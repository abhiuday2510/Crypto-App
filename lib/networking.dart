import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

String apiKey = 'cd47306106e3c154897811db8c69590caad14876';

class NetworkHelper {
  void getCoindata() async {
    Uri url = Uri(
      scheme: 'https',
      host: 'api.nomics.com',
      path: 'v1/currencies/ticker',
      queryParameters: {
        'key': apiKey,
        'ids': 'BTC',
        'convert': 'USD',
      },
    );
    http.Response response = await http.get(url);
    print(response.body);
  }
}