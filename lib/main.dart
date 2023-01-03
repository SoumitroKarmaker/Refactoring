import 'package:flutter/material.dart';

import 'button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GradientButton(
                  onTap: () {
                    print('This is frist Button');
                  },
                  text: 'Home',
                  icon: Icons.home,
                ),
                SizedBox(
                  width: 15,
                ),
                GradientButton(
                  onTap: () {
                    print('This is Second Button');
                  },
                  text: 'Add',
                  icon: Icons.add,
                ),
                SizedBox(
                  width: 15,
                ),
                GradientButton(
                  onTap: () {
                    print('This is Third Button');
                  },
                  text: 'call',
                  icon: Icons.call,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
