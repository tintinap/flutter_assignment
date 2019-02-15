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
      body: Container(
        padding:EdgeInsets.all(25),
        child:Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Image.asset(
                "resources/flutter_logo.png", 
                height: 175,
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  // labelText: "Email",
                  hintText: "User Id",
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => print(value),
                validator: (value){
                  if (value.isEmpty) {
                    return "กรุณาระบุ user or password";
                  }
                  if (value.toLowerCase() == 'admin')
                    return 'user or password ไม่ถูกต้อง';
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
                  if (value.toLowerCase() == 'admin') 
                    return 'user or password ไม่ถูกต้อง';
                },
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  child: Text("Login"),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.pushNamed(context, '/main');
                    };
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  child: Text("Register New Account"),
                  onPressed:() {
                    Navigator.pushNamed(context, "/register");
                  },
                ),
                alignment: Alignment.bottomRight,
              )
            ],
          ),
        ),
      ),
    );
  }
}