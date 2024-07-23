part of 'app_bloc.dart';

class AppEvent {
  const AppEvent();
}

class AppTypeChanged extends AppEvent {
  const AppTypeChanged(this.appType);

  final AppType appType;
}
