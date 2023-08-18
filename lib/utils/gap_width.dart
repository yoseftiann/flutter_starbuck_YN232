
import 'package:flutter/material.dart';

class GapHorizontal extends StatelessWidget {
  final double size;

  GapHorizontal(this.size);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
