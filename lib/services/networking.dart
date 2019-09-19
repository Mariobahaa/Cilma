import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url; //var
  NetworkHelper(this.url);

  Future getData() async {
    print('getting decoded data from api');
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      //String data
      //var data = response.body;
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print('something wrong!!!!!!!!!!!!!!!!!!!!!');
      print(response.statusCode);
    }
  }
}
