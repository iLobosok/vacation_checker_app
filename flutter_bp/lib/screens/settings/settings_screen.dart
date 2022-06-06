import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
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
        title: Center(child: Text("Settings", style: TextStyle(color: Colors.white, fontSize: 19),)),
      ),
      body: Column(
        children: [
            Center(child:Image.asset('assets/home/settings_logo.png')),
            Center(child: Text("BP One", style: TextStyle(color: Color(0xFF009B00), fontSize: 25),),),
            Center(child: Text("Version: 1.0.0 Build: 2019123101", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),),),
        ],
      ),
    );
  }
}
