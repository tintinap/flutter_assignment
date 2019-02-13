import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  RegisterState createState() {

    return RegisterState();
  }

}

class RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  var _password1 = '';
  var _password2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("REGISTER"),
        centerTitle: true,
      ),
      body: Container(
        padding:EdgeInsets.all(25),
        child:Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration : InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: 'User Id'
                ),
                onSaved: (value) => print(value),
                validator: (value) {
                  if (value.isEmpty) {
                    return "กรุณาระบุข้อมูลให้ครบถ้วน";
                  }
                  if (value.toLowerCase() == 'admin') {
                    return 'user นี้มีอยู่ในระบบแล้ว';
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                ),
                obscureText: true,
                keyboardType: TextInputType.text,
                onSaved: (value) => print(value),
                validator: (value){
                  this._password1 = value;
                  if (value.isEmpty) {
                    return "กรุณาระบุข้อมูลให้ครบถ้วน";
                  } else if (_password1 != _password2) {
                      return 'รหัสผ่านไม่ตรงกัน';
                  }

                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                ),
                obscureText: true,
                keyboardType: TextInputType.text,
                onSaved: (value) => print(value),
                validator: (value){
                  this._password2 = value;
                  if (value.isEmpty) {
                    return "กรุณาระบุข้อมูลให้ครบถ้วน";
                  } else if (_password1 != _password2) {
                      return 'รหัสผ่านไม่ตรงกัน';
                  }

                },
              ),
              Container(
                padding: EdgeInsets.only(top:15),
                child: RaisedButton(
                  child: Text("CONTINUE"),
                  splashColor: Colors.green,
                  onPressed: () {
                    if(_formKey.currentState.validate()) {
                      Navigator.pushNamed(context, '/');
                    };
                  },
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}