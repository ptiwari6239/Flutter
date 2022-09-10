import 'package:basic_to_advance/Pages/home_page.dart';
import 'package:basic_to_advance/utlis/routes.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _forkey = GlobalKey<FormState>();
  moveTOHome(BuildContext context) {
    if (_forkey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  // const loginPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: _forkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginpage.png",
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25.5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Username can't be empty";
                        } else if (value != null && value != "xyz@01") {
                          return "Wrong Username";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      validator: (String? value) {
                        if (value != null && value.isEmpty) {
                          return "Password can't be empty";
                        } else if (value != null && value != "xyz") {
                          return "Wrong Password, Please try again later";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    InkWell(
                      onTap: () => moveTOHome(context),
                      child: Container(
                        width: 110,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 10.0,
                              ),
                            ],
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
