import 'package:flutter/material.dart';

class SettingsScreen extends State {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF009B00),
        title: Center(
            child: Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontSize: 19),
        )),
      ),
      body: Column(
        children: [
          Center(child: Image.asset('assets/home/settings_logo.png')),
          Center(
            child: Text(
              "BP One",
              style: TextStyle(color: Color(0xFF009B00), fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Version: 1.0.0 Build: 2019123101",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Icon(
                        Icons.phone_iphone,
                        color: Colors.black,
                        size: 30,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: Text(
                              "Keep Screen Awake",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            )),
                        Text(
                          "Enabling this option to prevent \nphone from auto-lock",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.green,
                    inactiveThumbColor: Colors.redAccent,
                    inactiveTrackColor: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
