import 'package:flutter/material.dart';
import 'package:omisoft_test_login/services/networking.dart';
import 'package:omisoft_test_login/screens/omisoft_after_authorization_page.dart';
import 'package:omisoft_test_login/components/show_button_toast.dart';

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
    return Expanded(
      child: Row(
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
                  NetworkRequest networkRequest =
                      NetworkRequest(widget.userEmail, widget.userPassword);
                  networkRequest.makeRequest();
                  bool newResponse = networkRequest.finalResponse;
                  // makeRequest(
                  //     userEmail: 'Developer5@gmail.com',
                  //     userPassword: '123456');
                  // TODO Не успевает получить ответ и сразу выдает Toast с ошибкой на async await внутри build ругается

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
                    ShowButtonToast('Невірний email або пароль')
                        .showMessageToast();
                  }
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: const Text('Увійти'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
//
// class LoginButton extends StatelessWidget {
//   String userEmail = '';
//   String userPassword = '';
//   bool newResponse = false;
//   LoginButton(this.userEmail, this.userPassword, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
//   // void getFinalResponse(userEmail, userPassword) {
//   //   NetworkRequest networkRequest = NetworkRequest(userEmail, userPassword);
//   //   networkRequest.makeRequest();
//   //   newResponse = networkRequest.finalResponse;
//     //return networkRequest.finalResponse;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Row(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: MaterialButton(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 onPressed: () {
//                   //getFinalResponse(userEmail, userPassword);
//                   NetworkRequest networkRequest = NetworkRequest(userEmail, userPassword);
//                   networkRequest.makeRequest();
//                   newResponse = networkRequest.finalResponse;
//                   // makeRequest(
//                   //     userEmail: 'Developer5@gmail.com',
//                   //     userPassword: '123456');
//                   //if (response == true) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) {
//                         return const AfterAuthorizationPage();
//                       },
//                     ),
//                   );
//                   // } else {
//                   //   ShowButtonToast('Невірний email або пароль')
//                   //       .showMessageToast();
//                   // }
//                 },
//                 color: Colors.blue,
//                 textColor: Colors.white,
//                 child: const Text('Увійти'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
