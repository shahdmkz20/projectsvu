import 'package:flutter/material.dart';
import 'package:projectsvu/modules/login/loginpage.dart';
import 'package:projectsvu/modules/transactions/transactions.dart';
import 'package:projectsvu/modules/signup/signup.dart';
import 'package:projectsvu/shared/Colors/Colors.dart';

import '../../shared/componants/componants.dart';
import '../transactions/transactions.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        width: double.infinity,
        decoration: BoxDecoration(color: defaultBlue),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  'Welcome back',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                Text(
                  'Book your appointment with us now!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    child: Column(children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                          height: 150,
                          child: Image.asset('assets/images/logo.png')),
                      SizedBox(
                        height: 30,
                      ),
                      defaultButton(
                          text: 'SIGNUP',
                          function: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const signupPage()),
                            );
                          },
                          bkColor: defaultBlue,
                          txtColor: Colors.white),
                      SizedBox(
                        height: 15,
                      ),
                      defaultButton(
                          text: 'LOGIN',
                          function: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const loginpage()),
                            );
                          },
                          bkColor: defaultBlue,
                          txtColor: Colors.white),
                    ]),
                  )
                ]),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}
