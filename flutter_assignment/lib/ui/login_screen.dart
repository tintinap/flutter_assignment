import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {

    return LoginState();
  }

}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom form"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "resources/flutter_logo.png", 
              height: 100,
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                // labelText: "Email",
                hintText: "User Id",
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
              validator: (value){
                if (value.isEmpty) {
                  return "กรุณาระบุ user or password";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                // labelText: "Password",
                icon: Icon(Icons.lock),
                hintText: "Password",
              ),
              obscureText: true,
              keyboardType: TextInputType.text,
              onSaved: (value) => print(value),
              validator: (value){
                if (value.isEmpty) {
                  return "กรุณาระบุ user or password";
                }
              },
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: () {
                _formKey.currentState.validate();
              },
            ),
            Container(
              child: FlatButton(
                child: Text("Register New Account"),
                onPressed:() {
                  Navigator.pushNamed(context, "/register");
                }
              ),
              alignment: Alignment.bottomRight,
            )
          ],
        ),
      ),
    );
  }
}