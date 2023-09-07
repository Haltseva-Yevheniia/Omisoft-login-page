import 'package:flutter/material.dart';
import 'package:omisoft_test_login/screens/omisoft_login_page.dart';

class AfterAuthorizationPage extends StatefulWidget {
  const AfterAuthorizationPage({Key? key}) : super(key: key);

  @override
  State<AfterAuthorizationPage> createState() => _AfterAuthorizationPageState();
}

class _AfterAuthorizationPageState extends State<AfterAuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return OmisoftLoginPage();
                  },
                ),
              );
            },
            child: Text(
              'Вихід',
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
      ),
    );
  }
}
