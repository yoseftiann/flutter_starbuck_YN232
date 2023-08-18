import 'package:flutter/material.dart';

class DividerHorizontal extends StatefulWidget {
  const DividerHorizontal({super.key});

  @override
  State<DividerHorizontal> createState() => _DividerHorizontalState();
}

class _DividerHorizontalState extends State<DividerHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Divider(
        thickness: 1,
        color: Colors.grey[400],
      ),
    );
  }
}