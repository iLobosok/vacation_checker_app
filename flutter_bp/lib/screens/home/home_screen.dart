import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bp/bloc/news/bloc/news_bloc.dart';
import 'package:flutter_bp/screens/home/home_screen_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  int _currentIndex = 0;
  final List _children = [];

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
      body: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: BlocBuilder<NewsBloc, NewsState>(
                  builder: (context, state) {
                    if (state is NewsLoading) {
                      //immitate database get news
                      Future.delayed(const Duration(seconds: 3), () {});
                    }
                    if (state is NewsLoaded) {
                      return HomeScreenWidget(context);
                    } else {
                      return const Text("Error load news");
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
