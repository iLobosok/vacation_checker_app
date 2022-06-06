import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/shortcuts_widget.dart';
import 'package:flutter_bp/screens/request/request_screen.dart';

final titles = [
  "Protecting communities, one landmine at a time",
  "List 2",
  "List 3"
];

final subtitles = [
  "Meet one of 100 women leading the fight against Angola's landmines with the backing of the HALO Trust and BP",
  "Here is list 2 subtitle",
  "Here is list 3 subtitle"
];
GotoRequest(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RequestScreen()));
}
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
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            )),
        SizedBox(
          height: 165,
          child: ListView.builder(
              itemCount: titles.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                  child: Container(
                    height: 165,
                    width: 335,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 223, 227, 228),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          titles[index],
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top: 10),
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
          padding: EdgeInsets.only(top: 15),
          child: Container(
            height: 60,
            width: 320,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 5, right: 10),
                    child: InkWell(
                      onTap: () {
                          GotoRequest(context);
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF40E547),
                                  Color(0xFF40C2BA),
                                ])),
                        child: Center(
                            child: Column(
                          children: [
                            
                            const Spacer(),
                            Text(names[index]),
                            ],
                        )),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    ),
  );
}
