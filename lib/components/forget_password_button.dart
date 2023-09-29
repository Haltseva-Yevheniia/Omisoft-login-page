import 'package:flutter/material.dart';
import 'package:omisoft_test_login/components/show_button_toast.dart';

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
