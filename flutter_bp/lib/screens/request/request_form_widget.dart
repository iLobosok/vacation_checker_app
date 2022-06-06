import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/home_screen.dart';

String dropdownvalue1 = 'select';
String dropdownvalue2 = 'sick';
String dropdownvalue3 = 'select';
var items1 = [
  'Sick',
  'Day off',
  'Holiday',
];
var items2 = [
  'Sick',
  'Day off',
  'Holiday',
];
var items3 = [
  'Sick',
  'Day off',
  'Holiday',
];

Widget RequestFormWidget(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const MainScreen()));
        },
        child: const Padding(
          padding: const EdgeInsets.only(left: 3, top: 10),
          child: InkWell(
            child: Text(
              'Cancel',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              // ignore: unnecessary_const
              child: const Text(
                "New Request",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 44,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "Ship Owner",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Center(
                  child: SizedBox(
                    height: 30,
                    width: 300,
                    child: DropdownButton(
                      value: "Tokyo",
                      items: [
                        DropdownMenuItem(
                            child: Text("New York"), value: "New York"),
                        DropdownMenuItem(
                          child: Text("Tokyo"),
                          value: "Tokyo",
                        )
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  child: const Text(
                    "Vessel",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 30,
                  width: 300,
                  child: DropdownButton(
                    value: "Tokyo",
                    items: [
                      DropdownMenuItem(
                          child: Text("New York"), value: "New York"),
                      DropdownMenuItem(
                        child: Text("Tokyo"),
                        value: "Tokyo",
                      )
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 50),
                  child: const Text(
                    "Grade",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: const Text(
                    "Grade",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 30,
                  width: 300,
                  child: DropdownButton(
                    value: "Tokyo",
                    items: [
                      DropdownMenuItem(
                          child: Text("New York"), value: "New York"),
                      DropdownMenuItem(
                        child: Text("Tokyo"),
                        value: "Tokyo",
                      )
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      children: [
                        Text(
                          "Quantity",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 172, 167, 167),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: UnderlineInputBorder(),
                              labelText: '',
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 220),
                          child: const Text(
                            "Price",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 270,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(255, 172, 167, 167),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: UnderlineInputBorder(),
                              labelText: '',
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                  child: const Text(
                "Submit",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              )),
            ),
          ),
        ],
      ),
    ),
  );
}
