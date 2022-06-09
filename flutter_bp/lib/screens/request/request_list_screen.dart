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
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  width: 335,
                  child: Column(
                    children: <Widget>[
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 120,
                              width: 335,
                              color: Color(0xFF009EE0).withOpacity(0.05),
                              child: Row(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 6,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF009EE0),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 14,
                                          top: 10,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              '#33',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 156,
                                            ),
                                            Text(
                                              'Sep 6, 2019 2:25PM',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 40,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Counterparty',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Banca naz, BMlIITR1cJz NL',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 173,
                                          top: 8,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Marine',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Advance II',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 195,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Owner',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Derrick',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 233,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Grade',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 120,
                  width: 335,
                  child: Column(
                    children: <Widget>[
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 120,
                              width: 335,
                              color: Color(0xFF738C99).withOpacity(0.1),
                              child: Row(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 6,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF738C99),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 14,
                                          top: 10,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              '#32',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 156,
                                            ),
                                            Text(
                                              'Sep 6, 2019 2:25PM',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 40,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Counterparty',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Banca naz, BMlIITR1cJz NL',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 173,
                                          top: 8,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Marine',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Advance II',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 195,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Owner',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Derrick',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 233,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Grade',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 120,
                  width: 335,
                  child: Column(
                    children: <Widget>[
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 120,
                              width: 335,
                              color: Color(0xFF009900).withOpacity(0.05),
                              child: Row(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 6,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF009900),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 14,
                                          top: 10,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              '#31',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 156,
                                            ),
                                            Text(
                                              'Sep 6, 2019 2:25PM',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 125,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Counterparty',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '2V Energy iT',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          right: 176,
                                          top: 8,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Marine',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Bow Faith',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 195,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Owner',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              'Progen',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          right: 233,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(
                                              'Grade',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              '2',
                                              style: TextStyle(
                                                color: Color(0xFF314149),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ],
            ),
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
