// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';

final name_list_first = [
  "Vacation",
  "Marine",
  "Credit",
  "My Details",
];

// ignore: non_constant_identifier_names
final name_list_second = [
  "Assign",
  "Search",
  "Specvs",
  "Gifts",
];

// ignore: non_constant_identifier_names
final name_list_third = ["Unit\nConverts", "Others"];

final pics = [
  "check",
  "miscellaneous_services_outlined",
  "show_chart_rounded",
  "attach_money",
];

Widget ShortcutItem(BuildContext context) {
  return Container(
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
  );
}
