// import 'package:fluttergrab/locator.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginViewModel> {
  TextEditingController _emailCtrl;
  TextEditingController _passCtrl;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final _logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset("assets/logo.png"),
    );

    final _emailField = TextFormField(
      controller: _emailCtrl,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
        labelText: "E-mail Address",
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        focusColor: Theme.of(context).primaryColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final _passwordField = TextFormField(
      controller: _passCtrl,
      obscureText: _isObscure ? true : false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
        suffixIcon: IconButton(
          icon: Icon(_isObscure ? Icons.lock : Icons.lock_open),
          color: Theme.of(context).primaryColor,
          onPressed: () => setState(() {_isObscure = _isObscure ? false : true;}),
        ),
        labelText: "Password",
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        focusColor: Theme.of(context).primaryColor,
      ),
    );
    
    final _form = Form(
      child: Column(
        children: <Widget>[
          _emailField,
          SizedBox(height: 8.0),
          _passwordField,
        ],
      ),
    );

    return Container(
      child: Center(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            _logo,
            SizedBox(height: 48.0),
            _form,
            SizedBox(height: 24.0),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onPressed: () => Navigator.of(context).pushReplacementNamed("/home"),
                padding: EdgeInsets.all(12),
                color: Theme.of(context).primaryColor,
                child: Text('Log In', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      )
    ); 
  }
}