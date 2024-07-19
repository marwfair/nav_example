import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nav_example/app/bloc/app_bloc.dart';
import 'package:nav_example/app_router/app_router.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => AppBloc()),
    ], child: const MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    super.initState();

    _appRouter = AppRouter(
      navigatorKey: GlobalKey<NavigatorState>(),
      appBloc: context.read<AppBloc>(),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _appRouter.routes.refresh();
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        _appRouter.routes.refresh();
      },
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _appRouter.routes,
      ),
    );
  }
}
