import "package:flutter/material.dart";

class Email extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      style: TextStyle(
        color: Colors.white,
      ),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
