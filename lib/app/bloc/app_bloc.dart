import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppSignedIn>(_onSignedIn);
    on<AppLoggedOut>(_onLoggedOut);
    on<AppTypeChanged>(_onAppTypeChanged);
  }

  void _onSignedIn(
    AppSignedIn event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(signedIn: true));
  }

  void _onLoggedOut(
    AppLoggedOut event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(signedIn: false));
  }

  void _onAppTypeChanged(
    AppTypeChanged event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(appType: event.appType));
  }
}
