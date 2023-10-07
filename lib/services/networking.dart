//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

//'email': 'Developer5+555@gmail.com'
//'password': '123456'

class NetworkRequest {
  String userEmail;
  String userPassword;
  NetworkRequest(this.userEmail, this.userPassword);

  Future<Map<String, dynamic>> makeRequest() async {
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
    log('Код запиту: ${response.statusCode}');
    log('Response: $responseDecode');
    return responseDecode;
  }
}
