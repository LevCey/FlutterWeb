import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonLink extends StatelessWidget {
  const ButtonLink({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  final String title;
  final String url;

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SizedBox(
        width: width > 680 ? 680 : width * 0.95,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.tealAccent,
              padding: const EdgeInsets.all(25)),
          onPressed: () => _launchUrl(url),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black45, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
