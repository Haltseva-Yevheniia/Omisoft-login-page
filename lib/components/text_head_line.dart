import 'package:flutter/material.dart';

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
