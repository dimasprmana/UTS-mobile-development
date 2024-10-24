import 'package:flutter/material.dart';
import 'package:register_login/login_page.dart';
import 'package:register_login/login_sukses.dart';
import 'package:register_login/register_page.dart';
import 'package:register_login/profil_page.dart';
import 'package:register_login/register_sukses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login dan Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profil': (context) => ProfilePage(),
        '/loginsukses':(context) => LoginSukses(),
        '/registersukses':(context) => RegisterSukses(),
      },
    );
  }
}
