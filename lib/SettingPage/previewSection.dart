import 'package:flutter/material.dart';
import 'package:flutter_web_udemy/LinksLandingPage/links_landing_page.dart';

class PreviewSection extends StatelessWidget {
  const PreviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 28.0),
            child: Text(
              'Preview',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          SizedBox(height: 12),
          Expanded(child: LinksLandingPage()),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
