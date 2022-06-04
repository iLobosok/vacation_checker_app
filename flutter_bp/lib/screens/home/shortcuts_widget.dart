import 'package:flutter/material.dart';

final names = [
  "Vacation Check",
  "Marine",
  "Credit Check",
  "My Details",
  "Assign Chain",
  "Search Details",
  "Spec vs Cargo",
  "Gifts and Entertaiments",
  "Unit\nConverts",
  "Others"
];

Widget ShortcutsWidget(BuildContext context) {
  return Scaffold(
    body: Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF40E547),
                Color(0xFF40C2BA),
              ])),
    ),
  );
}
