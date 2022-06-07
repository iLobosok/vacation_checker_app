import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/home_screen.dart';

Widget RequestFormWidget(BuildContext context) {
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
              'Cancel',
              style: TextStyle(
                  color: Color(0xFF314149),
                  fontSize: 15,
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
                "New Request",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Ship Owner",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: SizedBox(
                      height: 34,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFF738C99).withOpacity(0.5),
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: 'Select Counterparty',
                            items: const [
                              DropdownMenuItem(
                                  child: Text("Select Counterparty"),
                                  value: "Select Counterparty"),
                              DropdownMenuItem(
                                child: Text("Select Other"),
                                value: "Select Other",
                              )
                            ],
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Vessel",
                    style: const TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 35,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF738C99).withOpacity(0.5),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: "Select by Name or IMO",
                        items: const [
                          DropdownMenuItem(
                              child: Text("Select by Name or IMO"),
                              value: "Select by Name or IMO"),
                          DropdownMenuItem(
                            child: Text("Select by other categories"),
                            value: "Select by other categories",
                          )
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    "Grade",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Grade",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SizedBox(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Container(
                      height: 50,
                      width: 270,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF738C99).withOpacity(0.5),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: '',
                          items: const [
                            DropdownMenuItem(child: Text(''), value: ''),
                          ],
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 16),
                    child: Column(
                      children: [
                        const Text(
                          "Quantity",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 34,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF738C99).withOpacity(0.5),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              border: InputBorder.none,
                              labelText: '',
                              labelStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 16),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 220),
                          child: Text(
                            "Price",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          height: 34,
                          width: 237,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF738C99).withOpacity(0.5),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
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
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 50,
              width: 370,
              decoration: const BoxDecoration(
                  color: Color(0xFF009B00),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: const Center(
                  child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              )),
            ),
          ),
        ],
      ),
    ),
  );
}
