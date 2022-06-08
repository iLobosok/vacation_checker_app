import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/request/request_form_widget.dart';

Widget RequestListWidget(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: InkWell(
            child: Text(
              'Back',
              style: TextStyle(
                  color: Color(0xFF314149),
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    ),
    body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              // ignore: unnecessary_const
              child: const Text(
                "Requests List",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const Center(
            child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text('List is empty')),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => RequestFormWidget(context),
          ),
        );
      },
      backgroundColor: Colors.green,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
  );
}
