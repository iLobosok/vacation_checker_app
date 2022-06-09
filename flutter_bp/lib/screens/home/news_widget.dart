import 'package:flutter/material.dart';
import 'shortcuts_widget.dart';

Widget NewsWidget() {
  return SizedBox(
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 16,
                    ),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'BP People',
                          style: TextStyle(
                              color: Color(0xFF738C99),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 133,
                        ),
                        const Text(
                          'Sep 6, 2019 2:25PM',
                          style: TextStyle(
                              color: Color(0xFF738C99),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text(
                        titles[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        subtitles[index],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}
