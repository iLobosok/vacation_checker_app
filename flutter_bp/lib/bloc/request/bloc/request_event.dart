part of 'request_bloc.dart';

@immutable
abstract class RequestEvent {}

class RequestSend extends RequestEvent {}