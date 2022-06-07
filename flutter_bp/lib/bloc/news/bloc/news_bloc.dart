import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsState get initialState {
    return NewsInitial();
  }
  
  NewsBloc() : super(NewsInitial()) {
    on<NewsEvent>((event, emit) {
        emit(NewsLoading());
        emit(NewsLoaded());
    });
  }
}