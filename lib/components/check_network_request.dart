// import 'package:flutter/material.dart';
// import 'package:omisoft_test_login/screens/omisoft_after_authorization_page.dart';
// import 'package:omisoft_test_login/services/networking.dart';

// class CheckRequest {
//   String userEmail;
//   String userPassword;
//
//   CheckRequest(this.userEmail,this.userPassword);
//
//
//   Future<bool> getResponse () async {
//                   NetworkRequest networkRequest =
//                       NetworkRequest(userEmail, userPassword);
//                   await networkRequest.makeRequest();
//                   return networkRequest.finalResponse;}
//                   // makeRequest(
//                   //     userEmail: 'Developer5@gmail.com',
//                   //     userPassword: '123456');
//                 //   if (networkRequest.finalResponse == true) {
//                 //     Navigator.push(
//                 //       context,
//                 //       MaterialPageRoute(
//                 //         builder: (context) {
//                 //           return const AfterAuthorizationPage();
//                 //         },
//                 //       ),
//                 //     );
//                 //   } else {
//                 //     ShowButtonToast('Невірний email або пароль')
//                 //         .showMessageToast();
//                 //   }
//                 // },
//
//   return finalResponse;
//   }
// }
