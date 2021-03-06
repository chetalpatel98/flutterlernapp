import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_page.dart';
import 'package:flutter_application_2/screens/loginpage.dart';
import 'package:flutter_application_2/screens/signpage.dart';
import 'package:flutter_application_2/utils/routs.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp( MyApp());
}

 class MyApp extends StatelessWidget
  {
  @override
  Widget build(BuildContext context)
   {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: MyRoutes.Signin_page,
      routes: {
         MyRoutes.login_page:(context) => login_page(),
         MyRoutes.Home_page:(context) => home_page(),
         MyRoutes.Signin_page:(context) => SignIn(),
      },

    );
  }
}