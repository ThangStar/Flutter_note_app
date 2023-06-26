part of 'test_app_bloc.dart';

abstract class TestAppState extends Equatable {
  const TestAppState();
}

class TestAppInitial extends TestAppState {
  @override
  List<Object> get props => [];
}
