import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => print("Login Button pressed!"),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.blue,
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
