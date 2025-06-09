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
        Text('Made in Flutter',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: Colors.blue)),
        const SizedBox(width: 7),
        const Icon(
          Icons.business_rounded,
          color: Colors.blueAccent,
        ),
      ],
    );
  }
}
