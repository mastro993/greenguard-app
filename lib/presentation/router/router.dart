import 'package:auto_route/auto_route.dart';
import 'package:greenguard_app/presentation/home/home_page.dart';
import 'package:greenguard_app/presentation/result/result_page.dart';
import 'package:greenguard_app/presentation/scan/scan_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: ScanPage),
    MaterialRoute(page: ResultPage, fullscreenDialog: true),
  ],
)
class $Router {}
