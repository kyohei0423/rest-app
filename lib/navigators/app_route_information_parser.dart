import 'package:flutter/material.dart';
import 'package:reset_app/navigators/app_route_path.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.length == 0) {
      return AppRoutePath.unauthorized();
    }
    if (uri.pathSegments[0] == 'login') {
      return AppRoutePath.login();
    }
    if (uri.pathSegments[0] == 'signup') {
      return AppRoutePath.signup();
    }

    return AppRoutePath.notFound();
  }

  @override
  RouteInformation restoreRouteInformation(AppRoutePath path) {
    if (path.isNotFound) {
      return RouteInformation(location: '/404');
    }
    if (path.isLoginPage) {
      return RouteInformation(location: '/login');
    }
    if (path.isSignupPage) {
      return RouteInformation(location: '/signup');
    }
    if (path.isTopPage) {
      return RouteInformation(location: '/');
    }

    return RouteInformation(location: '/404');
  }
}
