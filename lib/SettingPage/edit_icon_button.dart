import 'package:flutter/material.dart';
import 'package:flutter_web_udemy/models/link_data.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    Key? key,
    required this.document,
  }) : super(key: key);
  final LinkData document;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (() {}),
      icon: const Icon(Icons.edit),
    );
  }
}
