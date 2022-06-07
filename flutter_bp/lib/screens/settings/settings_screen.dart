import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/login/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  SettingsScreen({Key? key}) : super(key: key);
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
        backgroundColor: const Color(0xFF009B00),
        title: const Center(
            child: Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontSize: 19),
        )),
      ),
      body: Column(
        children: [
          Center(child: Image.asset('assets/home/settings_logo.png')),
          const Center(
            child: Text(
              "BP One",
              style: TextStyle(color: Color(0xFF009B00), fontSize: 25),
            ),
          ),
          const Center(
            child: Text(
              "Version: 1.0.0 Build: 2019123101",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Icon(
                          Icons.phone_iphone,
                          color: Colors.black,
                          size: 30,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Column(
                        children: const [
                          Padding(
                              padding: EdgeInsets.only(right: 30),
                              child: Text(
                                "Keep Screen Awake",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 17),
                              )),
                          Text(
                            "Enabling this option to prevent \nphone from auto-lock",
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Switch(
                        value: isSwitched,
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        onChanged: (bool value) {
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Icon(
                    Icons.help_rounded,
                    color: Colors.black,
                    size: 30,
                  )),
              const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Help & Support",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
            ],
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Icon(
                    Icons.info_rounded,
                    color: Colors.black,
                    size: 30,
                  )),
              const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "About BP One",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )),
            ],
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Icon(
                    Icons.power_settings_new_rounded,
                    color: Colors.black,
                    size: 30,
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: InkWell(
                    onTap: () {
                      LogOut(context);
                    },
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
LogOut(BuildContext context) {
    Navigator.pop(context);
   Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return const LoginScreen();
                              }));
}