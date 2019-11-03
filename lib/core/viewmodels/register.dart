import 'package:flutter/material.dart';

class RegisterViewModel extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterViewModel> {
  TextEditingController _fNameCtrl, _lNameCtrl, _emailCtrl, _passCtrl;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final _logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset("assets/logo.png"),
    );

    final _fNameField = TextFormField(
      controller: _fNameCtrl,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
        labelText: "First Name",
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        focusColor: Theme.of(context).primaryColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final _lNameField = TextFormField(
      controller: _lNameCtrl,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
        labelText: "Last Name",
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        focusColor: Theme.of(context).primaryColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
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

    final _registerButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: Theme.of(context).primaryColor,
        child: Text('Register', style: TextStyle(color: Colors.white)),
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
            _emailField,
            SizedBox(height: 8.0),
            _passwordField,
            SizedBox(height: 8.0),
            _fNameField,
            SizedBox(height: 8.0),
            _lNameField,
            SizedBox(height: 24.0),
            _registerButton,
          ],
        ),
      )
    );
  }
}