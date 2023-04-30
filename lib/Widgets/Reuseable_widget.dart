// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListTile_Widget extends StatelessWidget {
  final Text title;
  final Icon leading;
  final Icon trailing;
  final VoidCallback onTap;
  const ListTile_Widget({
    Key? key,
    required this.title,
    required this.leading,
    required this.trailing,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.grey.shade300,
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width * .8,
        child: ListTile(
          leading: leading,
          title: title,
          trailing: InkWell(
              onTap: onTap,
              child: const Icon(Icons.arrow_forward_ios_outlined)),
        ),
      ),
    );
  }
}
