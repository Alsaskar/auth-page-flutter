import 'package:flutter/material.dart';
import 'package:sign_in_app/pages/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SignInPage(),
      ),
    );
  }
}
