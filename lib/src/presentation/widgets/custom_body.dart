import 'package:flutter/material.dart';

import 'widgets.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [AnimationWidgetWelcome(size: size), BottomWelcome(size: size)],
    );
  }
}
