import 'package:flutter/material.dart';
import 'package:omisoft_test_login/services/networking.dart';
import 'package:omisoft_test_login/screens/omisoft_after_authorization_page.dart';
import 'package:omisoft_test_login/components/show_button_toast.dart';
import 'dart:developer';

class LoadingScreen extends StatefulWidget {
  String userEmail = '';
  String userPassword = '';

  LoadingScreen(this.userEmail, this.userPassword, {super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestSend();
    //Future.delayed(Duration(seconds: 5));
    //checkResponse(newResponse);
  }

  //late bool newResponse;
  Future requestSend() async {
    NetworkRequest networkRequest =
        NetworkRequest(widget.userEmail, widget.userPassword);
    await networkRequest.makeRequest();
    bool newResponse = networkRequest.finalResponse;
    log('$newResponse');
    // makeRequest(
    //     userEmail: 'Developer5@gmail.com',
    //     userPassword: '123456');
    // TODO Не успевает получить ответ и сразу выдает Waite
    if (newResponse == true) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const AfterAuthorizationPage();
          },
        ),
      );
    } else {
      ShowButtonToast('Невірний email або пароль').showMessageToast();
    }

    return newResponse;
  }

  // void checkResponse(newResponse) {
  //   log('start check');
  //   if (newResponse == true) {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) {
  //           return const AfterAuthorizationPage();
  //         },
  //       ),
  //     );
  //   } else {
  //     ShowButtonToast('Невірний email або пароль').showMessageToast();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('WAITE'),
      ),
    );
  }
}
