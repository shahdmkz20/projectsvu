import 'package:flutter/material.dart';

import '../../shared/Colors/Colors.dart';
import '../../shared/componants/componants.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});

  @override
  State<signupPage> createState() => _signupPageState();
}

Object? choosevalue;
String valueu = 'nationality';

class _signupPageState extends State<signupPage> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
  TextEditingController IDCont = TextEditingController();
  TextEditingController confirmPassCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: defaultBlue,
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.symmetric(vertical: 15),
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: defaultBlue, width: 10)),
          child: Image.asset('assets/images/logo.png'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            textContainer(
                Child: textField(
                    controllert: emailCont,
                    hint: 'Email',
                    pre: Icon(Icons.email))),
            SizedBox(
              height: 10,
            ),
            textContainer(
                Child: textField(
                    controllert: IDCont,
                    hint: 'National ID',
                    pre: Icon(Icons.person))),
            SizedBox(
              height: 10,
            ),
            textContainer(
                Child: textField(
                    controllert: passCont,
                    hint: 'password',
                    pre: Icon(Icons.lock))),
            SizedBox(
              height: 10,
            ),
            textContainer(
                Child: textField(
                    controllert: confirmPassCont,
                    hint: 'Confirm password',
                    pre: Icon(Icons.lock))),
            SizedBox(
              height: 40,
            ),
            defaultButton(
                text: 'SIGN UP',
                function: () {},
                bkColor: defaultBlue,
                txtColor: Colors.white,
                blurClr: Colors.blueGrey),
          ]),
        ),
      ]),
    );
  }
}
