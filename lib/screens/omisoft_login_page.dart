import 'package:flutter/material.dart';
import 'omisoft_after_authorization_page.dart';

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
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    onPressed: () {},
                    color: Colors.blue.shade900,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Row(
                        children: [
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
                                color: Colors.white54,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                        // child: ListTile(
                        //   //leading: Icon(Icons.facebook, color: Colors.white),
                        //   title: Text('Facebook'),
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.0,
                          color: Color(0xFFc4c7ce),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    onPressed: () {},
                    //color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Row(
                        children: [
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
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //SizedBox(
            //   height: 40.0,
            // ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Поштова скринька',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                child: Text('Забули пароль?'),
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
                                return AfterAuthorizationPage();
                              },
                            ),
                          );
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Увійти'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
