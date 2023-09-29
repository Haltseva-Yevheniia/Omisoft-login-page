import 'dart:developer';

import 'package:flutter/material.dart';

//String userEmail = '';
//String userPassword = '';

class PasswordTextField extends StatefulWidget {
  PasswordTextField(this.getPassword, {super.key});

  Function getPassword = () {};

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
            widget.getPassword(value);
            log(value);
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
  EmailTextField(this.getEmail, {super.key});
  Function getEmail = () {};

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
            widget.getEmail(value); // НЕ ПОНИМАЮ, ЧТО ДЕЛАЕТ (VALUE)

            log(value);
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
