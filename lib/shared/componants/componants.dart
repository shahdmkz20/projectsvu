import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../Colors/Colors.dart';

Widget defaultButton({
  double width = double.infinity,
  required String text,
  required Function()? function,
  required Color bkColor,
  required Color txtColor,
  Color blurClr = const Color.fromARGB(255, 223, 223, 236),
}) {
  return Container(
    width: width,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: blurClr,
        blurRadius: 10,
      )
    ], color: bkColor, borderRadius: BorderRadius.circular(10)),
    child: MaterialButton(
        height: 60,
        onPressed: function,
        child: Text(
          '$text'.toUpperCase(),
          style: TextStyle(color: txtColor, fontSize: 30),
        )),
  );
}

Widget textField({
  required String hint,
  required Icon pre,
  required TextEditingController controllert,
}) {
  return TextFormField(
    controller: controllert,
    style: TextStyle(fontSize: 20),
    decoration: InputDecoration(
      hintText: '$hint',
      prefixIcon: pre,
    ),
  );
}

Widget textField2({
  required String hint,
  TextAlign alignment = TextAlign.left,
  required TextEditingController controllert,
}) {
  return TextFormField(
    textAlign: alignment,
    controller: controllert,
    style: TextStyle(
      fontSize: 18,
    ),
    decoration: InputDecoration(
      hintText: '$hint',
    ),
  );
}

Widget textContainer({
  required Widget Child,
}) {
  return Container(
    width: double.infinity,
    height: 60,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(12)),
    child: Child,
  );
}

Widget imageContainer({
  required Image image,
}) {
  return Container(
    padding: EdgeInsets.all(8),
    width: double.infinity,
    child: Column(
      children: [
        Text('National ID '),
      ],
    ),
  );
}
