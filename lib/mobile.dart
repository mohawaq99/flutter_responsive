import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:null_safety/adaptive_indicator.dart';

import 'constants.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.blueAccent,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login to your Account",
                        style: Theme.of(context).textTheme.headline4),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Email Address"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("If you don't have an account press on Register"),
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blueAccent,
                            height: 45,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "LOGIN",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            height: 45,
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "REGISTER",
                                style: TextStyle(color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Center(child: AdaptiveIndicactor(
                      os: getOs(),
                    )),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

//  login

// 1. checkout master

// 2. update master (pull)

// 3. create branch

// 4. some code

// 5. commit changes

// 6. checkout master

// 7. update master

// 8. checkout your local branch

// 9. Merge master with my current branch

// 10. push changes

// add text on top of the buttons