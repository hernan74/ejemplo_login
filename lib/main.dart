import 'package:ejemplo_login/src/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login',
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xff601FFC),
      ),
      home: LoginPage(),
    );
  }
}
