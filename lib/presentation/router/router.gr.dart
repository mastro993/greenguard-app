// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:verificac19/verificac19.dart' as _i6;

import '../home/home_page.dart' as _i1;
import '../result/result_page.dart' as _i3;
import '../scan/scan_page.dart' as _i2;

class Router extends _i4.RootStackRouter {
  Router([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ScanPageRoute.name: (routeData) {
      final args = routeData.argsAs<ScanPageRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ScanPage(key: args.key, mode: args.mode));
    },
    ResultPageRoute.name: (routeData) {
      final args = routeData.argsAs<ResultPageRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ResultPage(args.result, key: args.key),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomePageRoute.name, path: '/'),
        _i4.RouteConfig(ScanPageRoute.name, path: '/scan-page'),
        _i4.RouteConfig(ResultPageRoute.name, path: '/result-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.ScanPage]
class ScanPageRoute extends _i4.PageRouteInfo<ScanPageRouteArgs> {
  ScanPageRoute({_i5.Key? key, required _i6.ValidationMode mode})
      : super(ScanPageRoute.name,
            path: '/scan-page', args: ScanPageRouteArgs(key: key, mode: mode));

  static const String name = 'ScanPageRoute';
}

class ScanPageRouteArgs {
  const ScanPageRouteArgs({this.key, required this.mode});

  final _i5.Key? key;

  final _i6.ValidationMode mode;

  @override
  String toString() {
    return 'ScanPageRouteArgs{key: $key, mode: $mode}';
  }
}

/// generated route for
/// [_i3.ResultPage]
class ResultPageRoute extends _i4.PageRouteInfo<ResultPageRouteArgs> {
  ResultPageRoute({required _i6.ValidationResult result, _i5.Key? key})
      : super(ResultPageRoute.name,
            path: '/result-page',
            args: ResultPageRouteArgs(result: result, key: key));

  static const String name = 'ResultPageRoute';
}

class ResultPageRouteArgs {
  const ResultPageRouteArgs({required this.result, this.key});

  final _i6.ValidationResult result;

  final _i5.Key? key;

  @override
  String toString() {
    return 'ResultPageRouteArgs{result: $result, key: $key}';
  }
}
