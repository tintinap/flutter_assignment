import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() {

    return RegisterState();
  }

}

class RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                    AppBar(
                title: "Main",
              )
      body: Container(
        padding:EdgeInsets.all(25),
        child:Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}