import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_page.dart';
import 'package:flutter_application_2/screens/loginpage.dart';

void main() {
  runApp( MyApp());
}

 class MyApp extends StatelessWidget
  {
  @override
  Widget build(BuildContext context)
   {
    return MaterialApp(
      initialRoute: "/home_page",
      routes: {
        "/login_page":(context) => login_page(),
        "/home_page":(context) => home_page(),
      },

    );
  }
}