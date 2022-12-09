import 'package:flutter/material.dart';
class AppColumnText extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  const AppColumnText({Key? key, required this.child1, required this.child2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child1,
        child2,
      ],
    );
  }
}
