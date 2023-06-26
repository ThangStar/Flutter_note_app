import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'test_app_event.dart';
part 'test_app_state.dart';

class TestAppBloc extends Bloc<TestAppEvent, TestAppState> {
  TestAppBloc() : super(TestAppInitial()) {
    on<TestAppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
