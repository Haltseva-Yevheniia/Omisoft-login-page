import 'package:flutter/material.dart';
import 'screens/omisoft_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const OmisoftLoginPage();
                  },
                ),
              );
              //Navigator.pop(context);
            });
          },
          child: const Text(
            'Тестова сторінка',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    ));
  }
}
