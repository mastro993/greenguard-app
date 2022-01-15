import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greenguard_app/di/injection.dart';
import 'package:greenguard_app/observer.dart';
import 'package:injectable/injectable.dart';
import 'package:verificac19/verificac19.dart';

import 'presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  await configureInjection(Environment.prod);

  await VerificaC19.initialize();

  BlocOverrides.runZoned(
    () => runApp(GreenGuardApp()),
    blocObserver: MyBlocObserver(),
  );
}
