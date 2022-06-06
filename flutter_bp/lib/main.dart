import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bp/bloc/login/login_bloc.dart';
import 'package:flutter_bp/bloc/news/bloc/news_bloc.dart';
import 'package:flutter_bp/bloc/request/bloc/request_bloc.dart';
import 'package:flutter_bp/settings/settings.dart';
import 'package:flutter_bp/bloc/bloc_observer.dart';

import 'screens/login/login_screen.dart';

void main() {
  BlocOverrides.runZoned(() {
    runApp(
      MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (context) => LoginService(),
            ),
            RepositoryProvider(
              create: (context) => HomeService(),
            ),
            RepositoryProvider(
              create: (context) => RequestService(),
            ),
          ],
          child: MultiBlocProvider(
            providers: [
              BlocProvider<LoginBloc>(
                  create: (BuildContext context) =>
                      LoginBloc()..add(LoginListen())),
              BlocProvider<NewsBloc>(
                create: (BuildContext context) =>
                    NewsBloc()..add(NewsReading()),
              ),
              BlocProvider<RequestBloc>(
                create: (BuildContext context) =>
                    RequestBloc()..add(RequestSend()),
              ),
            ],
            child: const MyApp(),
          )),
    );
  }, blocObserver: AppBlocObserver());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF009B00), Color(0xFF98CE00)])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset('assets/login/splash_logo.png'),
            ),
          )),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }
}
