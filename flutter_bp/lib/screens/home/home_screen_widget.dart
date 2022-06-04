import 'package:flutter/material.dart';
import 'package:flutter_bp/screens/home/news_cards.dart';
import 'package:flutter_bp/screens/home/shortcuts_widget.dart';

Widget HomeScreenWidget(BuildContext context) {
  return  Scaffold(
      body: Column(
          children: [
            const Padding(
              padding:  EdgeInsets.only(top: 54,right: 155,),
              child:  Text('Hi Progen!', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 40),)),
            const  Padding(
              padding:  EdgeInsets.only(top: 24,right: 290,),
              child:  Text('News', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 22),)),
            SizedBox(
              height: 165,
              child: ListView.builder(
                  itemCount: titles.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 165,
                      width: 335,
                      color: const Color(0xFF738C99),
                      child: ListTile(
                        title: Text(
                          titles[index],
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          subtitles[index],
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  }
              ),
            ),
            const  Padding(
              padding:  EdgeInsets.only(top: 24,right: 250,),
              child:  Text('Shortcuts', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 22),)),
            //ShortcutsWidget(context),         
          ],
        ),
      
  );
}
