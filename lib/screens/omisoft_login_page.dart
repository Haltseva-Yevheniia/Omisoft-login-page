import 'package:flutter/material.dart';
import 'package:omisoft_test_login/components/login_page_components.dart';

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
        // TODO try to use SingleChildScrollView but I cant (((
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TextHeadline(),
            RowButtons(),
            OrDivider(),
            EmailTextField(),
            PasswordTextField(),
            ForgetPasswordButton(),
            LoginButton(),
          ],
        ),
      ),
    );
  }
}
