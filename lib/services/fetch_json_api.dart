// Call the method e.g. from initState like this: FetchJsonApi().getDecodedBody();
//
// Install the http plugin here: https://pub.dev/packages/http
import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchJsonApi {
  final String url;

  FetchJsonApi({
    this.url = 'https://www.googleapis.com/books/v1/volumes?q={http}',
  });

  Future<Map<String, dynamic>> getDecodedBody() async {
    try {
      http.Response response = await http.get(url);
      int status = response.statusCode;
      String body = response.body;
      //print('response.status: ${response.statusCode}');
      //print('response.body: ${response.body}');
      //print('response.runtimeType: ${response.runtimeType}');
      //print('response.isRedirect: ${response.isRedirect}');

      if (status == 200 || status == 201) {
        Map<String, dynamic> decodedBody = jsonDecode(body);
        //print('decodedBody: $decodedBody');

        return decodedBody;
      } else
        throw ('Status: $status');
    } catch (e) {
      print('Error getting response: $e \n \n');
      return null;
    }
  }
}
