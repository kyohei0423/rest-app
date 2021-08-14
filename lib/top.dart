import 'package:flutter/material.dart';

class Top extends StatelessWidget {
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
                  onPressed: () {
                    print("tap sign up button");
                  },
                  child: Text('新規登録する')),
              OutlinedButton(
                  onPressed: () {
                    print("tap login button");
                  },
                  child: Text('ログインする'))
            ],
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    ));
  }
}
