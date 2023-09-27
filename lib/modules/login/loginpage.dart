import 'package:flutter/material.dart';
import 'package:projectsvu/modules/newrequest/newrquest.dart';
import 'package:projectsvu/shared/Colors/Colors.dart';

import '../../shared/componants/componants.dart';
import 'package:projectsvu/modules/newrequest/newrquest.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController PaaswordCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/loginBack.png',
              ),
              fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 150,
            ),
            SizedBox(
              height: 50,
            ),
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
                    controllert: PaaswordCont,
                    hint: 'password',
                    pre: Icon(Icons.lock))),
            SizedBox(
              height: 10,
            ),
            defaultButton(
                text: 'login',
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => newRequest()));
                },
                bkColor: Colors.white,
                txtColor: defaultBlue,
                blurClr: Color.fromARGB(255, 82, 100, 110)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Forgot Password? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Press here!',
                      style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
