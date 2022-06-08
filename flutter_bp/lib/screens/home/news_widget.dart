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
        );
}