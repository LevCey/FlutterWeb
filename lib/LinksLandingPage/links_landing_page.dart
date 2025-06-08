// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'button_link.dart';
import '../constants.dart';
import 'footer.dart';

class LinksLandingPage extends StatelessWidget {
  LinksLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 35),
        const CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          backgroundColor: Colors.white,
          radius: 48,
        ),
        const SizedBox(height: 12),
        const Text(
          '@socialHandle',
          style: TextStyle(color: Colors.blue),
        ),
        const SizedBox(height: 20),
        for (var document in documents)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: ButtonLink(
              title: document.title,
              url: document.url,
            ),
          ),
        const SizedBox(height: 66), //Spacer(flex: 5),
        const Footer(),
        const SizedBox(height: 29),
      ],
    );
  }
}
