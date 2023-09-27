import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectsvu/modules/passtype/passtype.dart';
import 'package:projectsvu/modules/transactions/transactions.dart';
import 'package:projectsvu/shared/Colors/Colors.dart';
import 'package:projectsvu/shared/componants/componants.dart';

class fourthPage extends StatefulWidget {
  const fourthPage({super.key});

  @override
  State<fourthPage> createState() => _fourthPageState();
}

class _fourthPageState extends State<fourthPage> {
  File? personalImage;
  File? nationalIdFront;
  File? nationalIdBack;
  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        personalImage = File('${pickedFile.path}');
      });

      // Use the picked image file.
      // You can display it in your UI or upload it to a server.
    } else {
      // User canceled the image picker.
    }
  }

  @override
  Widget build(BuildContext context) {
    File? personalImage;
    File? NationalIdFrontImage;
    File? NationalIdBackImage;
    Future<void> _getImageFromGallery() async {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          personalImage = File('${pickedFile.path}');
        });
      } else {
        // User canceled the image picker.
      }
    }

    Future<void> _getImageFromGallery2() async {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          NationalIdFrontImage = File('${pickedFile.path}');
        });
      } else {
        // User canceled the image picker.
      }
    }

    Future<void> _getImageFromGallery3() async {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          NationalIdBackImage = File('${pickedFile.path}');
        });
      } else {
        // User canceled the image picker.
      }
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 212, 210, 210),
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: defaultBlue, width: 3)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Enter Personal Image ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: defaultBlue, shape: BoxShape.circle),
                              child: MaterialButton(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  _getImageFromGallery();
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 212, 210, 210),
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: defaultBlue, width: 3)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Enter NationalID Front side Image ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: defaultBlue, shape: BoxShape.circle),
                              child: MaterialButton(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  _getImageFromGallery2();
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 212, 210, 210),
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: defaultBlue, width: 3)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Enter NationalID back side Image ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: defaultBlue, shape: BoxShape.circle),
                              child: MaterialButton(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  _getImageFromGallery3();
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                defaultButton(
                    text: 'save',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => transactions()));
                    },
                    bkColor: defaultBlue,
                    txtColor: Colors.white)
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
