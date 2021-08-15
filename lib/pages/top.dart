import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  final void Function() handleTappedLoginButton;
  final void Function() handleTappedSignupnButton;

  Top(
      {required this.handleTappedLoginButton,
      required this.handleTappedSignupnButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('rest'),
          Text('ストレスとうまくやっていく'),
          Row(
            children: [
              OutlinedButton(
                  onPressed: handleTappedSignupnButton, child: Text('新規登録する')),
              OutlinedButton(
                  onPressed: handleTappedLoginButton, child: Text('ログインする'))
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    ));
  }
}
