import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

String apiKey = 'cd47306106e3c154897811db8c69590caad14876';

class NetworkHelper {
  Future getCoindata(String abb) async {
    Uri url = Uri(
      scheme: 'https',
      host: 'api.nomics.com',
      path: 'v1/currencies/ticker',
      queryParameters: {
        'key': apiKey,
        'ids': abb,
        'convert': 'INR',
        'interval': '1d'
      },
    );
    http.Response response = await http.get(url);
    //print(response.statusCode);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 429) {
      sleep(Duration(seconds: 2));
    } else {
      print(response.statusCode);
    }
  }
}
