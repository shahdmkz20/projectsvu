import 'package:flutter/material.dart';
import 'package:projectsvu/modules/information/firstpage.dart';
import 'package:projectsvu/modules/passtype/passtype.dart';

import '../../shared/Colors/Colors.dart';
import '../../shared/componants/componants.dart';
import '../login/loginpage.dart';
import '../signup/signup.dart';

class newRequest extends StatefulWidget {
  const newRequest({super.key});

  @override
  State<newRequest> createState() => _newRequestState();
}

class _newRequestState extends State<newRequest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 40),
      width: double.infinity,
      decoration: BoxDecoration(color: defaultBlue),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 150, child: Image.asset('assets/images/logo.png'))
            ],
          ),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            defaultButton(
                                text: 'New request',
                                function: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const passtype()),
                                  );
                                },
                                bkColor: defaultBlue,
                                txtColor: Colors.white),
                            SizedBox(
                              height: 15,
                            ),
                            defaultButton(
                                text: 'Track passport',
                                function: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const loginpage()),
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
    );
  }
}
