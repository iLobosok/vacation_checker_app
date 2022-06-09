// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/request/request_screen.dart';
import 'package:flutter_bp/screens/settings/settings_screen.dart';

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

void onTapCheckerScreen(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const RequestScreen(),
    ),
  );
}

List<ShortCutWidget> shortcutList = [
  const ShortCutWidget(
    name: 'Completed Deals',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '0',
    onTap: onTapCheckerScreen,
  ),
  const ShortCutWidget(
    name: 'Marine',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '1',
    onTap: onTapCheckerScreen,
  ),
  const ShortCutWidget(
    name: 'Credit Check',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '2',
    onTap: onTapCheckerScreen,
  ),
  const ShortCutWidget(
    name: 'My Details',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '3',
    onTap: onTapCheckerScreen,
  ),
  const ShortCutWidget(
    name: 'Assign Chain',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '4',
    onTap: onTapCheckerScreen,
  ),
  const ShortCutWidget(
    name: 'Search Deals',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '5',
    onTap: onTapCheckerScreen,
  ),
  const ShortCutWidget(
    name: 'Spec vs Cargo',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '6',
    onTap: onTapCheckerScreen,
  ),
  ShortCutWidget(
    name: 'Gifts and Entertaiments',
    textColor: const Color(0xFF738C99),
    background1: const Color(0xFF40E547).withOpacity(0.1),
    background2: const Color(0xFF40C2BA).withOpacity(0.1),
    icon: '7',
    onTap: onTapCheckerScreen,
  ),
  ShortCutWidget(
    name: 'Unit Convers',
    textColor: const Color(0xFF738C99),
    background1: const Color(0xFF40E547).withOpacity(0.1),
    background2: const Color(0xFF40C2BA).withOpacity(0.1),
    icon: '8',
    onTap: onTapCheckerScreen,
  ),
  const ShortCutWidget(
    name: 'Others',
    textColor: Color(0xFF314149),
    background1: Color(0xFF40E547),
    background2: Color(0xFF40C2BA),
    icon: '9',
    onTap: onTapCheckerScreen,
  ),
];

goToRequest(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const RequestScreen(),
    ),
  );
}

goToNewScreen(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const RequestScreen(),
    ),
  );
}

goToSettings(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => SettingsScreen(),
    ),
  );
}

class ShortCutWidget extends StatelessWidget {
  const ShortCutWidget({
    Key? key,
    required this.name,
    required this.background1,
    required this.background2,
    required this.icon,
    required this.onTap,
    required this.textColor,
  }) : super(key: key);
  final String name;
  final Color textColor;
  final Color background1;
  final Color background2;
  final String icon;
  final void Function(BuildContext context) onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: [
        InkWell(
          onTap: () {
            onTap(context);
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  background1,
                  background2,
                ],
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Image.asset('assets/home/$icon.png'),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Flexible(
          child: Text(
            name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              color: textColor,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
