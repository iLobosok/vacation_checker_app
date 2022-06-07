import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/login/login_form_screen.dart';
import 'package:flutter_bp/screens/login/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bool _swichButton = false;
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 205,
              top: 43,
            ),
            // ignore: unnecessary_const
            child: const Text(
              'Settings',
              style: TextStyle(
                  color: Color(0xFF19272E),
                  fontSize: 40,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Center(
              child: SizedBox(
                height: 90,
                width: 90,
                child: Image.asset('assets/home/settings_logo.png'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'One IST',
              style: TextStyle(
                color: Color(0xFF009B00),
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'Vasilevich, Andrew (UNKNOW BUSINESS PARTNER)',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF738C99),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'Version: 1.0.0 Build: 2019123101',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF738C99),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/settings/faceid.png',
                          color: const Color(0xFF314149),
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          width: 181,
                          child: Align(
                            alignment: Alignment(-0.7, 0),
                            child: Text(
                              'Face ID',
                              style: TextStyle(
                                  color: Color(0xFF314149),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Enabling this option to prevent \nphone from auto-lock',
                            style: TextStyle(
                                color: Color(0xFF314149),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 53),
                      child: Switch(
                        activeColor: Colors.pinkAccent,
                        onChanged: (value) {
                          print("VALUE : $value");
                        },
                        value: _swichButton,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 21,
                        top: 42,
                      ),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/settings/support.png',
                          color: const Color(0xFF314149),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 21.68,
                        top: 40,
                      ),
                      child: Text(
                        'Help & Support',
                        style: TextStyle(
                            color: Color(0xFF314149),
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 21,
                        top: 42,
                      ),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/settings/about.png',
                          color: const Color(0xFF314149),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 21.68,
                        top: 40,
                      ),
                      child: Text(
                        'About ONE IST',
                        style: TextStyle(
                            color: Color(0xFF314149),
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 21,
                        top: 42,
                      ),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/settings/info.png',
                          color: const Color(0xFF314149),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 21.68,
                        top: 40,
                      ),
                      child: Text(
                        'Share',
                        style: TextStyle(
                            color: Color(0xFF314149),
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginWidgetForm(context),
                  ),
                );
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 21,
                          top: 42,
                        ),
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            'assets/settings/signout.png',
                            color: const Color(0xFFEC374A),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 21.68,
                          top: 40,
                        ),
                        child: Text(
                          'Sign out',
                          style: TextStyle(
                              color: Color(0xFFEC374A),
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

LogOut(BuildContext context) {
  Navigator.pop(context);
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return const LoginScreen();
  }));
}
