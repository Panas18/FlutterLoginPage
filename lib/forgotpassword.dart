import "package:flutter/material.dart";

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("forgot password?"),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          "Forgot Your Password?",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
