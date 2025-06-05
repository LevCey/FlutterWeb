import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Made in Flutter', style: TextStyle(fontSize: 17)),
        const SizedBox(width: 7),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToQOZyJGE9BaPUsDRwA2zLVSChrZQD0qngPQ&s',
          width: 25,
        )
      ],
    );
  }
}
