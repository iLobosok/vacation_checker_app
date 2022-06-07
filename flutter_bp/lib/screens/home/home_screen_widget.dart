import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/shortcuts_widget.dart';
import 'package:flutter_bp/screens/request/request_screen.dart';
import 'package:flutter_bp/screens/settings/settings_screen.dart';

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
        SizedBox(
          height: 165,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: titles.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 6, top: 20),
                  child: Container(
                    height: 165,
                    width: 335,
                    decoration: BoxDecoration(
                      color: const Color(0xFF738C99).withOpacity(0.1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          titles[index],
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          subtitles[index],
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              }),
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
