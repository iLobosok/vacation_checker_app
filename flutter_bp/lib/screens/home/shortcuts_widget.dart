// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/request/request_screen.dart';
import 'package:flutter_bp/screens/settings/settings_screen.dart';

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
  "Spec",
  "Gifts",
];

// ignore: non_constant_identifier_names
final name_list_third = ["Converts", "Others"];

final pics = [
  "check",
  "miscellaneous_services_outlined",
  "show_chart_rounded",
  "attach_money",
];
final titles = [
  "Protecting communities, one landmine at a time",
  "Rules and roots, one landmine at a time",
  "You are best"
];

final subtitles = [
  "Meet one of 100 women leading the fight against Angola's landmines with the backing of the HALO Trust and BP",
  "Find one of stones in... Meet one of 100 women leading the fight against Angola's landmines with the backing of the HALO Trust and BP",
  "Meet one of 100 women leading the fight against Angola's landmines with the backing of the HALO Trust and BP"
];

GoToRequest(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const RequestScreen()));
}

GoToSettings(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SettingsScreen()));
}

Widget ShortcutItem(BuildContext context) {
  return Container(
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
Widget ShortcutItem2(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 209, 248, 229),
              Color.fromARGB(255, 203, 248, 226),
            ])),
  );
}

