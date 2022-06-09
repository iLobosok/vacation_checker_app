// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/request/request_screen.dart';

List<CardItemWidget> cardItems = [
  CardItemWidget(
    name: '33',
    background: Color(0xFF009EE0).withOpacity(0.05),
    icon: Icon(Icons.star),
    leftbordercolor: Color(0xFF009EE0),
  ),
];

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    Key? key,
    required this.name,
    required this.background,
    required this.icon,
    required this.leftbordercolor,
  }) : super(key: key);
  final String name;
  final Color leftbordercolor;
  final Color background;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 120,
          width: 335,
          color: background,
          child: Row(
            children: [
              Container(
                height: 120,
                width: 6,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    '#$name',
                    style: const TextStyle(
                      color: Color(0xFF314149),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
