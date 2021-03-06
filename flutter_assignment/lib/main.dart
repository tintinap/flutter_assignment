import 'package:flutter/material.dart';

import 'ui/login_screen.dart';
import 'ui/register_screen.dart';
import 'ui/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes : {
        // "/" : (context) => FirstScreen(),
        "/" : (context) => Login(),
        "/register" : (context) => Register(),
        "/main" : (context) => MainScreen(),
        // "/second" : (context) => SecondScreen(),
        // "/detail" : (context) => DetailScreen(title: 'Detail',) no need for goto with parameter
      }
    );
  }
}
