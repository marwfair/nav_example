part of 'app_bloc.dart';

enum AppType {
  customer,
  publisher,
  unknown,
}

class AppState extends Equatable {
  const AppState({
    this.signedIn = false,
    this.appType = AppType.unknown,
  });

  final bool signedIn;
  final AppType appType;

  AppState copyWith({
    bool? signedIn,
    AppType? appType,
  }) {
    return AppState(
      signedIn: signedIn ?? this.signedIn,
      appType: appType ?? this.appType,
    );
  }

  @override
  List<Object> get props => [
        signedIn,
        appType,
      ];
}
