import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class ShowButtonToast {
  String messageToast = '';

  ShowButtonToast(this.messageToast);

  void showMessageToast() {
    Fluttertoast.showToast(
        msg: messageToast,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
