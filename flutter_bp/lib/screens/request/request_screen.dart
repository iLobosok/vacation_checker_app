import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bp/bloc/request/bloc/request_bloc.dart';
import 'package:flutter_bp/screens/request/request_list_screen.dart';
import 'request_form_widget.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: BlocBuilder<RequestBloc, RequestState>(
                builder: (context, state) {
                  if (state is RequestLoading) {
                    //immitate database get news
                    Future.delayed(const Duration(seconds: 3), () {});
                  }
                  if (state is RequestLoaded) {
                    //Load our List of Requests
                    return RequestListWidget(context);
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
