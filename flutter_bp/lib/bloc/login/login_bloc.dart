import 'package:bloc/bloc.dart';
import 'package:flutter_bp/settings/settings.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginState get initialState {
    return LoginInitial();
  }
  
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
        emit(LoginLoading());
        emit(LoginLoaded());
    });
  }
}