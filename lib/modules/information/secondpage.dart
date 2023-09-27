import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projectsvu/modules/information/thirdpage.dart';

import '../../shared/Colors/Colors.dart';
import '../../shared/componants/componants.dart';

class secondPage extends StatefulWidget {
  const secondPage({super.key});

  @override
  State<secondPage> createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  DateTime? selectedIssueDate = DateTime.now();
  DateTime? selectedFinishDate = DateTime.now();
  TextEditingController PassNoCont = TextEditingController();
  TextEditingController PassPlaceCont = TextEditingController();

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
        selectedIssueDate = value;
      });
    });
  }

  void _showDatePicker2() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1950),
            lastDate: DateTime(2024))
        .then((value) {
      setState(() {
        selectedFinishDate = value;
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/2.png'),
                      SizedBox(
                        height: 50,
                      ),
                      Text('Old Passport Information',
                          style: TextStyle(color: defaultBlue, fontSize: 25)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'if you do not have old passport , skip this page ..',
                        style: TextStyle(
                            color: Color.fromARGB(255, 128, 13, 13),
                            fontSize: 15),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: textContainer(
                                Child: textField2(
                                    controllert: PassNoCont,
                                    hint: 'Passport number')),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: textContainer(
                                Child: textField2(
                                    controllert: PassPlaceCont,
                                    hint: 'Place of Passport Issuance')),
                          ),
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
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Issuing date:',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 73, 73, 73)),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${formatDate(selectedIssueDate)}',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 73, 73, 73)),
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
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Finish date:',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 73, 73, 73)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${formatDate(selectedFinishDate)}',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color:
                                              Color.fromARGB(255, 73, 73, 73)),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          _showDatePicker2();
                                        },
                                        icon: Icon(Icons.arrow_drop_down))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      defaultButton(
                        text: 'Next',
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const thirdPage()));
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
            ],
          ),
        ),
      ),
    );
  }
}
