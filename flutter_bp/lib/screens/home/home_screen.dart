import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bp/bloc/navigation/cubit/navigation_bar_items.dart';
import 'package:flutter_bp/bloc/navigation/cubit/navigation_cubit.dart';
import 'package:flutter_bp/bloc/news/bloc/news_bloc.dart';
import 'package:flutter_bp/constants/constants.dart';
import 'package:flutter_bp/screens/home/home_screen_widget.dart';
import 'package:flutter_bp/screens/home/news_widget.dart';

import 'shortcuts_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  MainScreen createState() => MainScreen();
}

class MainScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_new
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          // ignore: unnecessary_new
          return BottomNavigationBar(
              backgroundColor: panelbg,
              selectedItemColor: greypanel,
              unselectedItemColor: unselected_panel_bg.withOpacity(0.8),
              currentIndex: state.index,
              showUnselectedLabels: true,
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.house
                  ),
                  label: 'Home',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notifications',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
              onTap: (index) {
                if (index == 0) {
                  BlocProvider.of<NavigationCubit>(context)
                      .getNavBarItem(NavbarItem.home);
                } else if (index == 1) {
                  BlocProvider.of<NavigationCubit>(context)
                      .getNavBarItem(NavbarItem.search);
                } else if (index == 2) {
                  BlocProvider.of<NavigationCubit>(context)
                      .getNavBarItem(NavbarItem.alers);
                } else if (index == 3) {
                goToSettings(context);
                }
              },
          );
        },
      ),
      body: Column(
        children: <Widget>[
          const Padding(
              padding: EdgeInsets.only(
                top: 43,
                right: 155,
              ),
              child: Text(
                'Hi Progen!',
                style: TextStyle(
                  fontFamily: 'HelveticaNeueCyr',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 40),
              )),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              right: 290,
            ),
            child: Text(
              'News',
              style: TextStyle(
                fontFamily: 'HelveticaNeueCyr',
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
          ),
          SizedBox(
            height: 165,
            child: BlocBuilder<NewsBloc, NewsState>(
              builder: (context, state) {
                if (state is NewsLoading) {
                  //immitate database get news
                  Future.delayed(const Duration(seconds: 3), () {});
                }
                if (state is NewsLoaded) {
                  return NewsWidget();
                } else {
                  return const Text("Error load news");
                }
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
              right: 240,
            ),
            child: Text(
              'Shortcuts',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
          ),
          SizedBox(
            height: 330,
            width: MediaQuery.of(context).size.width * 1,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 40,
              crossAxisCount: 4,
              children: shortcutList,
            ),
          ),
        ],
      ),
    );
  }
}
