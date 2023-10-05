import 'package:flutter/material.dart';
import 'package:omisoft_test_login/components/text_field_email_password.dart';
import 'package:omisoft_test_login/components/forget_password_button.dart';
import 'package:omisoft_test_login/components/login_button.dart';
import 'package:omisoft_test_login/components/text_head_line.dart';
import 'package:omisoft_test_login/components/row_buttons_registration.dart';
import 'package:omisoft_test_login/components/or_divider.dart';

class OmisoftLoginPage extends StatefulWidget {
  const OmisoftLoginPage({Key? key}) : super(key: key);

  @override
  State<OmisoftLoginPage> createState() => _OmisoftLoginPageState();
}

class _OmisoftLoginPageState extends State<OmisoftLoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // TODO try to use SingleChildScrollView but I cant (((
        //resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            //keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TextHeadline(),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                const RowButtons(),
                const SizedBox(
                  height: 50,
                ),
                const OrDivider(),
                const SizedBox(
                  height: 20,
                ),
                EmailTextField((value) {
                  setState(() {
                    email = value;
                  });
                }),
                PasswordTextField((value) {
                  setState(() {
                    password = value;
                  });
                }),
                const ForgetPasswordButton(),
                const SizedBox(
                  height: 40,
                ),
                LoginButton(email, password),
              ],
            ),
          );
        }),
      ),
    );
  }
}

// body: LayoutBuilder(builder:
// (BuildContext context, BoxConstraints viewportConstraints) {
// return SingleChildScrollView(
// keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
// child: ConstrainedBox(
// constraints:
// BoxConstraints(minHeight: viewportConstraints.maxHeight),
// child: IntrinsicHeight(
// child: Column(
