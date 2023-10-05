//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

//'email': 'Developer5@gmail.com'
//'password': '123456'

class NetworkRequest {
  String userEmail;
  String userPassword;
  bool checkResponse = true;
  NetworkRequest(this.userEmail, this.userPassword);

  Future<http.Response?> makeRequest() async {
    Uri url =
        Uri.parse('http://restapi.adequateshop.com/api/authaccount/login');
    Map<String, String> bodyData = {
      'email': userEmail,
      'password': userPassword,
    };
    String bodyDataJson = jsonEncode(bodyData);

    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: bodyDataJson,
    );
    final responseDecode = jsonDecode(response.body);
    //final responseName = responseDecode['data'];
    //final responseMessage = responseDecode['message'];
    if (response.statusCode == 200) {
      checkResponse = true;
      log('Код запиту: ${response.statusCode}');
      log(responseDecode);
    } else {
      checkResponse = false;
      log('ERROR: ${response.statusCode}');
    }
    return response;
  }
}
