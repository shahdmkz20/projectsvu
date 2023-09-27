import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectsvu/modules/signup/signup.dart';
import 'package:projectsvu/shared/Colors/Colors.dart';
import 'package:projectsvu/shared/componants/componants.dart';
import 'package:projectsvu/modules/information/secondpage.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  String? selectedGenders = 'Male';
  String? selectedCity = 'Damascus';
  DateTime? selectedDate = DateTime.now();
  TextEditingController? dateController = TextEditingController();
  TextEditingController IDcont = TextEditingController();
  TextEditingController firstNameCont = TextEditingController();
  TextEditingController firstNameACont = TextEditingController();
  TextEditingController LastNameCont = TextEditingController();
  TextEditingController LastNameACont = TextEditingController();
  TextEditingController motherNameCont = TextEditingController();
  TextEditingController MotherNameACont = TextEditingController();
  TextEditingController BirthCityCont = TextEditingController();
  TextEditingController BirthCityACont = TextEditingController();
  String formatDate(DateTime? date) {
    if (date != null) {
      final formatter = DateFormat('yyyy-MM-dd');
      return formatter.format(date);
    } else {
      return 'Date is null';
    }
  }

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2024))
        .then((value) {
      setState(() {
        selectedDate = value;
        dateController?.text = formatDate(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        padding: EdgeInsets.only(top: 80, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(children: [
                  Image.asset('assets/images/1.png'),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Personal Information ',
                      style: TextStyle(color: defaultBlue, fontSize: 25)),
                  textContainer(
                      Child:
                          textField2(controllert: IDcont, hint: 'National ID')),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: textContainer(
                            Child: textField2(
                                controllert: firstNameCont,
                                hint: 'first  name')),
                      ),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: 5,
                          )),
                      Expanded(
                          flex: 10,
                          child: textContainer(
                              Child: textField2(
                                  controllert: firstNameACont,
                                  hint: 'الاسم الأول',
                                  alignment: TextAlign.right)))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: textContainer(
                            Child: textField2(
                                controllert: LastNameCont, hint: 'last  name')),
                      ),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: 5,
                          )),
                      Expanded(
                          flex: 10,
                          child: textContainer(
                              Child: textField2(
                                  controllert: LastNameACont,
                                  hint: 'الكنية',
                                  alignment: TextAlign.right)))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: textContainer(
                            Child: textField2(
                                controllert: motherNameCont, hint: 'mother')),
                      ),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: 5,
                          )),
                      Expanded(
                          flex: 10,
                          child: textContainer(
                            Child: textField2(
                                controllert: MotherNameACont,
                                hint: 'اسم الام ',
                                alignment: TextAlign.right),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 10,
                        child: textContainer(
                            Child: textField2(
                                controllert: BirthCityCont, hint: 'BirthCity')),
                      ),
                      Expanded(
                          flex: 1,
                          child: SizedBox(
                            width: 5,
                          )),
                      Expanded(
                          flex: 10,
                          child: textContainer(
                            Child: textField2(
                                controllert: BirthCityACont,
                                hint: 'مكان الولادة ',
                                alignment: TextAlign.right),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Birthdate:',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 73, 73, 73)),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${formatDate(selectedDate)}',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 73, 73, 73)),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        _showDatePicker();
                                      },
                                      icon: Icon(Icons.arrow_drop_down))
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: DropdownButton(
                              items: ['Male', 'Female']
                                  .map((e) => DropdownMenuItem(
                                        child: Text('$e'),
                                        value: e,
                                      ))
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  selectedGenders = val;
                                });
                              },
                              value: selectedGenders,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                              builder: (context) => const secondPage()));
                    },
                    bkColor: defaultBlue,
                    txtColor: Colors.white,
                    width: 150,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
