part of 'app_bloc.dart';

class AppEvent {
  const AppEvent();
}

class AppSignedIn extends AppEvent {
  const AppSignedIn();
}

class AppLoggedOut extends AppEvent {
  const AppLoggedOut();
}

class AppTypeChanged extends AppEvent {
  const AppTypeChanged(this.appType);

  final AppType appType;
}
