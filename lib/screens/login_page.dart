import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                ),
                SizedBox(
                  height: 40.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeBtn = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, Routes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeBtn ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeBtn
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "SignIn",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeBtn ? 50 : 10)),
                  ),
                )
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, Routes.homeRoute);
                //   },
                //   child: Text("SignIn"),
                //   style: TextButton.styleFrom(
                //       padding:
                //           EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                // ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
