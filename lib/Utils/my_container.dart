import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final double myheight;
  const MyContainer({
    super.key,
    required this.child,
    required this.myheight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueAccent.shade700,
        ),
        height: myheight,
        child: child);
  }
}
