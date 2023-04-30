// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReuseAbleButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final TextStyle style;
  final Color color;
  final double width;
  const ReuseAbleButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.style,
    required this.color,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: color,
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 60,
          width: width,
          child: Center(
            child: Text(
              title,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}
