import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/home_screen.dart';
import 'widget_text_field.dart';

Widget LoginWidgetForm(BuildContext context) {
  return Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF009B00),
          Color(0xFF98CE00),
        ],
      ),
    ),
    child: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 62),
            child: Center(
              child: Image.asset(
                'assets/login/login_screen_logo.png',
              ),
            ),
          ),
          //added widget with fields for flexibility
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            child: TextFieldCustom1(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            child: TextFieldCustom2(),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF).withOpacity(0.3),
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  height: 46,
                  width: 315,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Need help?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ]),
      ),
    ),
  );
}
