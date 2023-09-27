import 'package:flutter/material.dart';
import 'package:projectsvu/modules/payment/payment.dart';

class transactions extends StatefulWidget {
  const transactions({super.key});

  @override
  State<transactions> createState() => _transactionsState();
}

class _transactionsState extends State<transactions> {
  int transID = 125;
  var status = false;
  String note = 'nothing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Trans_Container(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const payment()));
              },
              TransDate: DateTime.now(),
              transID: transID,
              transStatus: status,
              notes: note)
        ]),
      ),
    );
  }
}

Widget Trans_Container({
  required DateTime TransDate,
  required int transID,
  required bool transStatus,
  required String notes,
  var paied,
  required Function()? function,
}) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Color.fromARGB(97, 211, 208, 208),
            blurRadius: 10,
            blurStyle: BlurStyle.outer)
      ],
      borderRadius: BorderRadius.circular(15),
      color: Color.fromARGB(255, 219, 220, 224),
      border: Border.all(color: Colors.black, width: 1),
    ),
    child: Column(children: [
      Text(
        'Passport transaction information',
        style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 165, 16, 11)),
      ),
      Row(
        children: [
          Text(
            'Transaction issue date:',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            width: 5,
          ),
          Text('${TransDate.toString()}'),
        ],
      ),
      Row(
        children: [
          Text('Transaction ID:', style: TextStyle(fontSize: 15)),
          SizedBox(
            width: 5,
          ),
          Text('${transID.toString()}'),
        ],
      ),
      Row(
        children: [
          Text('Transaction status:', style: TextStyle(fontSize: 15)),
          SizedBox(
            width: 5,
          ),
          transStatus == false ? Text('created') : Text('on working'),
        ],
      ),
      Row(
        children: [
          Text('Notes :', style: TextStyle(fontSize: 15)),
          SizedBox(
            width: 5,
          ),
          transStatus == false ? Text('complete payment') : Text('paied')
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: transStatus == false ? function : () {},
            child: transStatus == false ? Text('pay') : Text(''),
          )
        ],
      )
    ]),
  );
}
