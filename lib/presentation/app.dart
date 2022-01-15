import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenguard_app/di/injection.dart';
import 'package:greenguard_app/presentation/home/bloc/home_bloc.dart';

import 'router/router.gr.dart' as r;

class GreenGuardApp extends StatelessWidget {
  final _appRouter = r.Router();

  GreenGuardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => getIt<HomeBloc>()..add(const HomeEvent.started()),
        ),
      ],
      child: MaterialApp.router(
        title: 'GreenGuard',
        theme: ThemeData(
          canvasColor: const Color(0xFFECECEC),
          fontFamily: 'Asap',
        ),
        routerDelegate: AutoRouterDelegate(_appRouter),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
