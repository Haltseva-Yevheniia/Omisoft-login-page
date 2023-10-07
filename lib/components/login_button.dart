import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:omisoft_test_login/screens/omisoft_after_authorization_page.dart';

import '../services/networking.dart';

class LoginButton extends StatefulWidget {
  final String userEmail;
  final String userPassword;

  const LoginButton(this.userEmail, this.userPassword, {super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              onPressed: () async {
                bool result = await sendRequest();
                if (result) {
                  if (context.mounted) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const AfterAuthorizationPage();
                      }),
                    );
                  }
                } else {
                  log('Not open');
                  //TODO show error
                }
                log(widget.userEmail);
                log(widget.userPassword);
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Увійти'),
            ),
          ),
        ),
      ],
    );
  }

  Future<bool> sendRequest() async {
    NetworkRequest networkRequest =
        NetworkRequest(widget.userEmail, widget.userPassword);
    networkRequest.makeRequest();
    Map<String, dynamic> newResponse =
        await NetworkRequest(widget.userEmail, widget.userPassword)
            .makeRequest();
    log('$newResponse');
    return newResponse['code']== 0;
  }
  // Future<List<dynamic>> requestSend() async {
  //   NetworkRequest networkRequest =
  //   NetworkRequest(widget.userEmail, widget.userPassword);
  //   networkRequest.makeRequest();
  //   Map<String, dynamic> newResponse =
  //   await NetworkRequest(widget.userEmail, widget.userPassword)
  //       .makeRequest();
  //   log('$newResponse');
  //   return [newResponse['code']== 0, newResponse['message']['token']];
  // }



}
