import 'package:flutter/material.dart';
import 'package:reset_app/navigators/app_router_delegate.dart';
import 'package:reset_app/navigators/app_route_information_parser.dart';
import 'package:reset_app/pages/authentication/login.dart';
import 'package:reset_app/pages/top.dart';

class App extends StatefulWidget {
  @override
  State createState() => _AppState();
}

class _AppState extends State<App> {
  AppRouterDelegate _routerDelegate = AppRouterDelegate();
  AppRouteInformationParser _routeInformationParser =
      AppRouteInformationParser();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'REST',
        routeInformationParser: _routeInformationParser,
        routerDelegate: _routerDelegate);
  }
}
