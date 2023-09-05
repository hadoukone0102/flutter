import 'package:famille/Acceuil/welcom.dart';
import 'package:famille/Acceuil/welcome_page.dart';
import 'package:famille/Formulaire/login.dart';
import 'package:famille/Formulaire/signup.dart';
import 'package:famille/Pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome':(context)=>welcome(),
        '/welcom2':(context)=>welcome_page2(),
        // route pour le formulaire
        '/Login':(context)=>Login(),
        '/Signup':(context)=>Signup(),

        //route pour les pages
        '/Home':(context)=>Home_Pages(),
      },
    );
  }
}
