import 'package:flutter/material.dart';

Widget TextFieldCustom1() {
  return TextFormField(
    decoration: InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
      ),
      border: const UnderlineInputBorder(),
      labelText: 'Email',
      labelStyle: const TextStyle(color: Colors.white),
    ),
  );
}

Widget TextFieldCustom2() {
  return TextFormField(
    decoration: InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
      ),
      border: const UnderlineInputBorder(),
      labelText: 'Password',
      labelStyle: const TextStyle(color: Colors.white),
    ),
  );
}
