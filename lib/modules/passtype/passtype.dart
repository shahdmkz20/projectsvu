import 'package:flutter/material.dart';

import '../../shared/Colors/Colors.dart';
import '../../shared/componants/componants.dart';
import '../information/firstpage.dart';
import '../login/loginpage.dart';

class passtype extends StatefulWidget {
  const passtype({super.key});

  @override
  State<passtype> createState() => _passtypeState();
}

class _passtypeState extends State<passtype> {
  var passType = ['urgent', 'normal'];
  var selectedPass;
  var cityBranch = ['Damascus', 'Aleppo', 'Homs', 'Hama', 'Lattkia', 'Tartus'];
  var selectedBranch;
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
                              Row(children: [
                                Text(
                                  'Select you passport type : ',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: DropdownButton<String>(
                                    items: passType
                                        .map((e) => DropdownMenuItem<String>(
                                              child: Text('$e'),
                                              value: e,
                                            ))
                                        .toList(),
                                    onChanged: (val) {
                                      setState(() {
                                        selectedPass = val;
                                      });
                                    },
                                    value: selectedPass,
                                  ),
                                ),
                              ]),
                              SizedBox(
                                height: 15,
                              ),
                              Row(children: [
                                Text(
                                  'Select pick up branch : ',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  child: DropdownButton<String>(
                                    items: cityBranch
                                        .map((e) => DropdownMenuItem<String>(
                                              child: Text('$e'),
                                              value: e,
                                            ))
                                        .toList(),
                                    onChanged: (val) {
                                      setState(() {
                                        selectedBranch = val;
                                      });
                                    },
                                    value: selectedBranch,
                                  ),
                                ),
                              ]),
                              defaultButton(
                                  text: 'Next',
                                  function: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const firstPage()),
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
