import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngo_app/features/home/bloc/home_screen_event.dart';
import 'package:ngo_app/features/home/bloc/home_screen_state.dart';

/// bloc for home screen
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(super.initialState) {
    /// home screen initial event
    on<HomeScreenInitialEvent>(homeScreenInitialEvent);

    /// event handler for sidebar button click
    on<SlideBarButtonClickedEvent>(slideBarButtonClickedEvent);
  }

  FutureOr<void> slideBarButtonClickedEvent(
      SlideBarButtonClickedEvent event, Emitter<HomeScreenState> emit) {}

  FutureOr<void> homeScreenInitialEvent(
      HomeScreenInitialEvent event, Emitter<HomeScreenState> emit) async {
    emit(HomeScreenLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeScreenDataLoadSuccesState());
  }
}
