import 'package:flutter/material.dart';
import 'package:omisoft_test_login/services/networking.dart';
import 'package:omisoft_test_login/screens/omisoft_after_authorization_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

String userEmail = '';
String userPassword = '';

class RowButtons extends StatelessWidget {
  const RowButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            onPressed: () {
              ShowButtonToast('Facebook registration').showMessageToast();
            },
            color: Colors.blue.shade900,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Facebook',
                    style: TextStyle(
                        color: Colors.white54, fontWeight: FontWeight.w400),
                  ),
                ],
                // child: ListTile(
                //   //leading: Icon(Icons.facebook, color: Colors.white),
                //   title: Text('Facebook'),
                // ),
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          MaterialButton(
            shape: const RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.0,
                  color: Color(0xFFc4c7ce),
                ),
                borderRadius: BorderRadius.all(Radius.circular(6.0))),
            onPressed: () {
              ShowButtonToast('Google registration').showMessageToast();
            },
            //color: Colors.grey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.g_mobiledata,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Google',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            width: 100.0,
            height: 15.0,
            child: Divider(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            'або',
            style: TextStyle(fontSize: 30.0),
          ),
          SizedBox(
            width: 20.0,
          ),
          SizedBox(
            width: 100.0,
            height: 15.0,
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: TextField(
          //autofocus: true,
          onChanged: (value) {
            userPassword = value;
            print(userPassword);
          },
          // onSubmitted: (value) {
          //   userPassword = value;
          //   print(userPassword);
          // },
          obscureText: true,
          decoration: const InputDecoration(
            hintText: 'Пароль',
          ),
        ),
      ),
    );
  }
}

class EmailTextField extends StatefulWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: TextField(
          autofocus: true,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: 'Поштова скринька',
          ),
          onChanged: (value) {
            userEmail = value;
            print(userEmail);
          },
          // onSubmitted: (value) {
          //   userEmail = value;
          //   print(userEmail);
          // },
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

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
                  NetworkRequest networkRequest =
                      NetworkRequest(userEmail, userPassword);
                  networkRequest.makeRequest();
                  // makeRequest(
                  //     userEmail: 'Developer5@gmail.com',
                  //     userPassword: '123456');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const AfterAuthorizationPage();
                      },
                    ),
                  );
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

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          ShowButtonToast('Відновити пароль').showMessageToast();
        },
        child: const Text('Забули пароль?'),
      ),
    );
  }
}

class TextHeadline extends StatelessWidget {
  const TextHeadline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Увійдіть щоб продовжити',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Inter', fontWeight: FontWeight.bold, fontSize: 40.0),
        ),
      ),
    );
  }
}

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
