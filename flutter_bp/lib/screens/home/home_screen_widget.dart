import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/shortcuts_widget.dart';

Widget HomeScreenWidget(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        const Padding(
            padding: EdgeInsets.only(
              top: 43,
              right: 155,
            ),
            child: Text(
              'Hi Progen!',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 40),
            )),
        const Padding(
          padding: EdgeInsets.only(
            top: 20,
            right: 290,
          ),
          child: Text(
            'News',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
        
        const Padding(
          padding: EdgeInsets.only(
            top: 30,
            right: 240,
          ),
          child: Text(
            'Shortcuts',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
        SizedBox(
          height: 330,
          width: MediaQuery.of(context).size.width*1,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 30,
            crossAxisCount: 4,
            children: shortcutList,
          ),
        ),
      ],
    ),
  );
}
