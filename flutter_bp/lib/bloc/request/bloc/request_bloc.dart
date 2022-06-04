import 'package:bloc/bloc.dart';
import 'package:flutter_bp/settings/settings.dart';
import 'package:meta/meta.dart';

part 'request_event.dart';
part 'request_state.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  RequestState get initialState {
    return RequestInitial();
  }

  RequestBloc() : super(RequestInitial()) {
    on<RequestEvent>((event, emit) {
      emit(RequestLoading());
      emit(RequestLoaded());
    });
  }
}
