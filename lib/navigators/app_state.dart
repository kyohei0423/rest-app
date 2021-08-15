class AppState {
  bool isLoggedIn = false;
  bool showLoginPage = false;
  bool showSignupPage = false;

  loggedIn(bool value) {
    isLoggedIn = value;
    if (isLoggedIn == true) {
      showLoginPage = false;
    }
  }

  changeShowLoginPage(bool value) {
    showLoginPage = value;
  }

  changeShowSignupPage(bool value) {
    showSignupPage = value;
  }
}
