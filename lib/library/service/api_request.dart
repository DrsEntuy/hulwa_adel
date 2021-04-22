import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:hulwa_adel/library/util/util.dart';
import 'package:async/async.dart';
import 'package:path/path.dart';

final String urlServer = 'https://apimynet.hulwa.co.id';
final String urlLogin = urlServer + '/user-service/user/login';
final String urlKaryawanList = urlServer + '/user-service/user/list/all';
final String urlKaryawanDetail = urlServer + '/user-service/user';
final String urlKaryawanSearch = urlServer + '/user-service/user/search';
final String urlKaryawanAdd = urlServer + '/user-service/user';

class PostRequestAPI {
  static var client = http.Client();
  static Future<String> fetchAPI(
      Map<String, dynamic> paramAPI, String urlAPI) async {
    var response = await http.post(
      Uri.parse(urlAPI),
      body: json.encode(paramAPI),
      headers: {
        "content-type": "application/json",
        "accept": "application/json",
        "Authorization": UserToken.pcUserToken,
      },
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else if (response.statusCode == 401) {
      return response.body;
    } else {
      return null;
    }
  }

  //
  // ignore: missing_return
  static Future<String> fetchAPIImage(
      Map<String, dynamic> paramAPI, String urlAPI, File imageFile) async {
    var email = paramAPI['email'];
    var name = paramAPI['name'];
    var phone = paramAPI['phone'];
    var nik = paramAPI['nik'];

    // ignore: deprecated_member_use
    var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));

    var length = await imageFile.length();

    var uri = Uri.parse(urlAPI);

    var request = http.MultipartRequest("POST", uri);

    request.headers['Autorization'] = "application/json";
    request.headers['content-type'] = "application/json";
    request.headers['accept'] = UserToken.pcUserToken;

    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));

    request.files.add(multipartFile);
    request.fields["email"] = email;
    request.fields["name"] = name;
    request.fields["phone"] = phone;
    request.fields["nik"] = nik;

    var response = await request.send();

    print(response.statusCode);
    if (response.statusCode == 200) {
      response.stream.transform(utf8.decoder).listen((value) {
        return value;
      });
    } else if (response.statusCode == 401) {
      response.stream.transform(utf8.decoder).listen((value) {
        print('ada');
        print(value);
        return value;
      });
    } else {
      return null;
    }
  }
}

class GetRequestAPI {
  static var client = http.Client();
  static Future<String> fetchAPI(
      Map<String, dynamic> paramAPI, String urlAPI) async {
    var response = await http.get(
      Uri.parse(urlAPI),
      headers: {
        "content-type": "application/json",
        "accept": "application/json",
        "Authorization": UserToken.pcUserToken,
      },
    );
    // print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else if (response.statusCode == 401) {
      return response.body;
    } else {
      return null;
    }
  }
}
