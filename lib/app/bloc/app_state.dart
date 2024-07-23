part of 'app_bloc.dart';

enum AppType {
  customer,
  publisher,
  unknown,
}

class AppState extends Equatable {
  const AppState({
    this.appType = AppType.unknown,
  });

  final AppType appType;

  AppState copyWith({
    AppType? appType,
  }) {
    return AppState(
      appType: appType ?? this.appType,
    );
  }

  @override
  List<Object> get props => [
        appType,
      ];
}
