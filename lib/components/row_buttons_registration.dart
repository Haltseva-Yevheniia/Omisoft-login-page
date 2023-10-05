import 'package:flutter/material.dart';
import 'package:omisoft_test_login/components/show_button_toast.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
