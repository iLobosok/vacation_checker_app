part of 'request_bloc.dart';

@immutable
abstract class RequestState {}

class RequestInitial extends RequestState {}

class RequestLoading extends RequestState {}

class RequestLoaded extends RequestState {}

class RequestError extends RequestState {}