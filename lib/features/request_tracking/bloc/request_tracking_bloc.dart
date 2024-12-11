import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'request_tracking_event.dart';
part 'request_tracking_state.dart';

class RequestTrackingBloc extends Bloc<RequestTrackingEvent, RequestTrackingState> {
  RequestTrackingBloc() : super(RequestTrackingInitial()) {
    on<RequestTrackingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
