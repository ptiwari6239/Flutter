import 'package:basic_to_advance/Pages/home_page.dart';
import 'package:basic_to_advance/utlis/routes.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  // const loginPage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset(
              "assets/images/loginpage.png",

              // height: 1200,R
              // alignment: AlignmentGeometry
            ),
            SizedBox(
              height: 50.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  InkWell(
                    // hoverColor: Colors.red,
                    // splashColor: Colors.red,
                    onTap: (() {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }),
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
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 50)),
                  // )
                ],
              ),
            )
          ],
        )));
  }
}
