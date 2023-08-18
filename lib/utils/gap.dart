
import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  final double size;

  Gap(this.size);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size);
  }
}
