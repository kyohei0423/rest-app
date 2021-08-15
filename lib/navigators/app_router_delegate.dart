import 'package:flutter/material.dart';
import 'package:reset_app/navigators/app_route_path.dart';
import 'package:reset_app/navigators/app_state.dart';
import 'package:reset_app/pages/top.dart';
import 'package:reset_app/pages/authentication/login.dart';
import 'package:reset_app/pages/authentication/signup.dart';

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;
  final AppState state;

  AppRouterDelegate()
      : navigatorKey = GlobalKey<NavigatorState>(),
        state = AppState();

  AppRoutePath get currentConfiguration {
    if (state.showLoginPage) {
      return AppRoutePath.login();
    }
    if (state.showSignupPage) {
      return AppRoutePath.signup();
    }
    return AppRoutePath.unauthorized();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: ValueKey('TopPage'),
          child: Top(
            handleTappedLoginButton: () {
              state.changeShowLoginPage(true);
              notifyListeners();
            },
            handleTappedSignupnButton: () {
              state.changeShowSignupPage(true);
              notifyListeners();
            },
          ),
        ),
        if (state.showLoginPage)
          MaterialPage(
            key: ValueKey('LoginPage'),
            child: Login(),
          ),
        if (state.showSignupPage)
          MaterialPage(
            key: ValueKey('SignupPage'),
            child: Signup(),
          )
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        state.changeShowLoginPage(false);
        state.changeShowSignupPage(false);
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath path) async {
    if (path.isLoginPage) {
      state.changeShowLoginPage(true);
      return;
    }
    if (path.isSignupPage) {
      state.changeShowSignupPage(true);
      return;
    }
  }
}
