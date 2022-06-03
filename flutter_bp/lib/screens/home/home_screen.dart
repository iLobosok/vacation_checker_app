import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bp/bloc/login/login_bloc.dart';
import 'package:flutter_bp/bloc/news/bloc/news_bloc.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    return Container(color: Colors.red,);
                  } else {
                    return const Text("Error load news");
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
