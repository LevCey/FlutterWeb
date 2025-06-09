import 'package:flutter/material.dart';
import 'button_link.dart';
import '../constants.dart';
import 'footer.dart';

class LinksLandingPageSettings extends StatelessWidget {
  final String handle;

  LinksLandingPageSettings({
    Key? key,
    required this.handle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(height: 35),
          const CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.white,
            radius: 48,
          ),
          const SizedBox(height: 12),
          Text(handle,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.blue)),
          const SizedBox(height: 20),
          for (var document in documents)
            ButtonLink(
              title: document.title,
              url: document.url,
            ),
          const SizedBox(height: 66), //Spacer(flex: 5),
          const Footer(),
          const SizedBox(height: 29),
        ],
      ),
    );
  }
}
