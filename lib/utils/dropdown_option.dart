import 'package:flutter/material.dart';

class DropdownOption extends StatefulWidget {
  final String title;
  DropdownOption({Key?key, required this.title});

  @override
  State<DropdownOption> createState() => _DropdownOptionState();
}

class _DropdownOptionState extends State<DropdownOption> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.title, 
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 16,
          color:Color.fromARGB(255, 207, 168, 68)
        )
      ],
    );
  }
}