import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bp/bloc/login/login_bloc.dart';

import 'login_form_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginLoading) {
                    //immitate database
                    Future.delayed(const Duration(seconds: 3), () {});
                  }
                  if (state is LoginLoaded) {
                    return LoginWidgetForm(context);
                  } else {
                    return const Text("");
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
