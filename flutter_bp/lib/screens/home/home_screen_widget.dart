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
              top: 54,
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
            top: 24,
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
                  padding: const EdgeInsets.only(left: 15, right: 5, top: 5),
                  child: Container(
                    height: 165,
                    width: 335,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 223, 227, 228),
                      borderRadius: BorderRadius.all(
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
              top: 24,
              right: 250,
            ),
            child: Text(
              'Shortcuts',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 100,
            width: 320,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5, right: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: InkWell(
                            onTap: () {
                              GoToRequest(context);
                            },
                            child: Stack(
                              children: [
                                ShortcutItem(context),
                                Center(
                                  child: Image.asset('assets/home/$index.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(name_list_first[index]),
                      ],
                    ),
                  );
                }),
          ),
        ),
        Container(
          height: 100,
          width: 320,
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Stack(
                          children: [
                            ShortcutItem(context),
                            Center(
                              child: Image.asset('assets/home/a$index.png'),
                            ),
                          ],
                        ),
                      ),
                      Text(name_list_second[index]),
                    ],
                  ),
                );
              }),
        ),
        Container(
          height: 100,
          width: 320,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: InkWell(
                        onTap: () {
                          GoToSettings(context);
                        },
                        child: Stack(
                          children: [
                            ShortcutItem2(context),
                            Center(
                              child: Image.asset('assets/home/b0.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(name_list_third[0]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: InkWell(
                        onTap: () {
                          GoToSettings(context);
                        },
                        child: Stack(
                          children: [
                            ShortcutItem(context),
                            Center(
                              child: Image.asset('assets/home/b1.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(name_list_third[1]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
