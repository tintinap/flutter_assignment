import 'package:flutter/material.dart';

import 'ui/login_screen.dart';
import 'ui/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes : {
        // "/" : (context) => FirstScreen(),
        "/" : (context) => Login(),
        "/register" : (context) => Register(),
        // "/second" : (context) => SecondScreen(),
        // "/detail" : (context) => DetailScreen(title: 'Detail',) no need for goto with parameter
      }
    );
  }
}
