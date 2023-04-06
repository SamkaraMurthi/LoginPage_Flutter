import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool password = true;

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  )),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 3.5,
            top: -getBigDiameter(context) / 3.5,
            child: Container(
              child: Center(
                child: Text(
                  "LoginForm",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  )),
            ),
          ),
          Positioned(
            bottom: -getSmallDiameter(context) / 2,
            right: -getSmallDiameter(context) / 2,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFFF3E9EE)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.email, color: Color(0xFFFF6DA7)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF6DA7))),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Color(0xFFFF6DA7))),
                    ),
                    TextField(
                      obscureText: password,
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.vpn_key, color: Color(0xFFFF6DA7)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFF6DA7))),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Color(0xFFFF6DA7)),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {});
                                if (password == true) {
                                  password = false;
                                } else {
                                  password = true;
                                }
                              },
                              child: Icon(Icons.visibility,
                                  color: Color(0xFFFF6DA7)))),
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.only(right: 35),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xFFFF6DA7)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Spacer(flex: 10),
                      //Login Button
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                            )),
                        child: Text("Login",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),

                      Spacer(
                        flex: 5,
                      ),

                      //Twiter Login
                      Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('images/tw.png'),
                                fit: BoxFit.cover)),
                      ),

                      Spacer(flex: 5),
                      //Facebook Login
                      Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('images/fb.png'),
                                fit: BoxFit.cover)),
                      ),
                      Spacer(
                        flex: 10,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 90),
                  child: Row(children: [
                    Spacer(
                      flex: 40,
                    ),
                    Text(
                      "Do Not have an Account yet?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFF6DA7)),
                    ),
                    Spacer(
                      flex: 40,
                    )
                  ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
