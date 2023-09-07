import 'package:flutter/material.dart';
import 'omisoft_after_authorization_page.dart';
import 'crow_buttons.dart';

class OmisoftLoginPage extends StatefulWidget {
  const OmisoftLoginPage({Key? key}) : super(key: key);

  @override
  State<OmisoftLoginPage> createState() => _OmisoftLoginPageState();
}

class _OmisoftLoginPageState extends State<OmisoftLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Увійдіть щоб продовжити',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0),
                  ),
                ),
              ),
              //SizedBox(
              //   width: 20.0,
              // ),
              RowButtons(),
              //SizedBox(
              //   height: 40.0,
              // ),
              Expanded(
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
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Поштова скринька',
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: TextField(
                    //autofocus: true,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Пароль',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Забули пароль?'),
                ),
              ),
              // SizedBox(
              //   height: 10.0,
              // ),
              Expanded(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
