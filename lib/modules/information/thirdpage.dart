import 'package:flutter/material.dart';
import 'package:projectsvu/modules/information/fourthpage.dart';
//import 'package:projectsvu/modules/information/fourthpage.dart';
import 'package:projectsvu/modules/signup/signup.dart';
import 'package:image_picker/image_picker.dart';
import '../../shared/Colors/Colors.dart';
import '../../shared/componants/componants.dart';

class thirdPage extends StatefulWidget {
  const thirdPage({super.key});

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  TextEditingController counrtyCont = TextEditingController();
  TextEditingController cityCont = TextEditingController();
  TextEditingController phoneCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.only(top: 80, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/images/3.png'),
              SizedBox(
                height: 50,
              ),
              Text('Address Information',
                  style: TextStyle(color: defaultBlue, fontSize: 25)),
              Center(
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: textContainer(
                            Child: textField2(
                                controllert: counrtyCont, hint: 'Country')),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: textContainer(
                        Child: textField2(controllert: cityCont, hint: 'City')),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: textContainer(
                        Child: textField2(
                            controllert: phoneCont, hint: 'phone number')),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              defaultButton(
                text: 'Next',
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const fourthPage(),
                      ));
                },
                bkColor: defaultBlue,
                txtColor: Colors.white,
                width: 150,
              ),
              SizedBox(
                height: 15,
              ),
              defaultButton(
                text: 'Back',
                function: () {
                  Navigator.pop(context);
                },
                bkColor: defaultBlue,
                txtColor: Colors.white,
                width: 150,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
