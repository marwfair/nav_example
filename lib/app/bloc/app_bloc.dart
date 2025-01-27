import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppTypeChanged>(_onAppTypeChanged);
  }

  void _onAppTypeChanged(
    AppTypeChanged event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(appType: event.appType));
  }
}
