import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/home_screen.dart';
import 'package:flutter_bp/screens/request/request_screen.dart';
import 'widget_text_field.dart';


  Widget LoginWidgetForm(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF009B00), Color(0xFF98CE00)])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(children: [
            Center(
              child: Image.asset('assets/login/login_screen_logo.png'),
            ),
            //added widget with fields for flexibility
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFieldCustom1(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFieldCustom2(),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RequestScreen()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF99CC00),
                    borderRadius: BorderRadius.all(
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
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Need help?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
