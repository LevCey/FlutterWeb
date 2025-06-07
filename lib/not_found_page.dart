import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('404', style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 7),
          Text(
            'Page Not Found',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
