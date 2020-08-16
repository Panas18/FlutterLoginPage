import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "./email.dart";
import "./password.dart";
import "./forgotpassword.dart";
import "./login.dart";
import "./facebook.dart";
import "./google.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(255, 123, 67, 1),
                      Color.fromRGBO(245, 50, 111, 1),
                    ],
                  ))),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 100,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome To              ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Column(
                          children: [
                            Email(),
                            SizedBox(height: 10),
                            Password(),
                            ForgotPassword(),
                            LoginButton(),
                            SizedBox(height: 5),
                            Text(
                              "-OR-",
                              style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            LoginFacebook(),
                            LoginGoogle(),
                            SizedBox(height: 0),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 3),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Text(
                                    "Not signed it yet? ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  GestureDetector(
                                    onTap: () => print("Not signed in"),
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
