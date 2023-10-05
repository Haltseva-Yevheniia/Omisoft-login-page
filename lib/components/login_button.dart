import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:omisoft_test_login/screens/loading_screen.dart';

class LoginButton extends StatefulWidget {
  String userEmail = '';
  String userPassword = '';

  LoginButton(this.userEmail, this.userPassword, {super.key});

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
              onPressed: () {
                //getFinalResponse(userEmail, userPassword);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LoadingScreen(widget.userEmail, widget.userPassword);
                  }),
                );
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
}
