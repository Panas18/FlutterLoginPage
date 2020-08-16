import "package:flutter/material.dart";

class Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      autofocus: false,
      style: TextStyle(
        color: Colors.white,
      ),
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: "password",
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
