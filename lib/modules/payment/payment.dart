import 'package:flutter/material.dart';
import 'package:projectsvu/shared/componants/componants.dart';

import '../../shared/Colors/Colors.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  late TextEditingController accountNumCont;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                            textContainer(
                                Child: textField2(
                                    hint: 'Enter account number',
                                    controllert: accountNumCont)),
                            SizedBox(
                              height: 15,
                            ),
                            defaultButton(
                                text: 'pay',
                                function: () {},
                                bkColor: defaultBlue,
                                txtColor: Colors.white)
                          ]),
                    )
                  ]),
            ),
          ),
        ))
      ]),
    ));
  }
}
