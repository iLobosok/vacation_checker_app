import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

Widget TextFieldCustom1() {
  return TextFormField(
    decoration: const InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      border: UnderlineInputBorder(),
      labelText: 'Email',
      labelStyle: TextStyle(color: Colors.white),
    ),
  );
}
Widget TextFieldCustom2() {
  return TextFormField(
    decoration: const InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      border: UnderlineInputBorder(),
      labelText: 'Password',
      labelStyle: TextStyle(color: Colors.white),
    ),
  );
}
