import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
