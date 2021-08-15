class AppRoutePath {
  final bool isAuthorized;
  final bool isLogin;
  final bool isSignup;
  final bool isNotFound;

  AppRoutePath.unauthorized()
      : isAuthorized = false,
        isLogin = false,
        isSignup = false,
        isNotFound = false;

  AppRoutePath.login()
      : isAuthorized = false,
        isLogin = true,
        isSignup = false,
        isNotFound = false;

  AppRoutePath.signup()
      : isAuthorized = false,
        isLogin = false,
        isSignup = true,
        isNotFound = false;

  AppRoutePath.notFound()
      : isAuthorized = false,
        isLogin = false,
        isSignup = false,
        isNotFound = true;

  bool get isTopPage => isAuthorized == false;
  bool get isLoginPage => isAuthorized == false && isLogin == true;
  bool get isSignupPage => isAuthorized == false && isSignup == true;
  bool get isNotFoundPage => isNotFound == true;
}
