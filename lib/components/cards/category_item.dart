import 'package:flutter/material.dart';
import 'package:qualif_yn232/utils/gap.dart';

class CategoryItem extends StatefulWidget {
  final String title;
  final String image;
  const CategoryItem({Key?key, required this.title, required this.image});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(0, 1),
              )
            ]
          ),
          child: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(35),
              child: Image.asset(widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Gap(5),
        Text(widget.title, 
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            letterSpacing: 1
          ),
        )
      ],
    );
  }
}