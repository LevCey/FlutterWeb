import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Levent Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LinksLandingPage(),
    );
  }
}

class LinksLandingPage extends StatelessWidget {
  LinksLandingPage({Key? key}) : super(key: key);

  final imageUrl =
      'https://media.licdn.com/dms/image/v2/C4D03AQEl8Mq6WnU2Yw/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1603281966932?e=1754524800&v=beta&t=umr7_KhV415gDXlMek9Pfb0ASM6aRHkCxcpxOCweUwE';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(height: 35),
          CircleAvatar(
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
            ButtonLink(
              title: document['title'] ?? 'Untitled',
              url: document['url']!, // ?? 'www.google.com'
            ), // null ise untitled yapıldı
        ],
      ),
    );
  }
}

var documents = [
  {'title': 'YouTube', 'url': 'https://www.youtube.com'},
  {'title': 'LinkedIn', 'url': 'https://www.linkedin.com'},
];

class ButtonLink extends StatelessWidget {
  ButtonLink({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  final String title;
  final String url;

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

  Future<void> _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }
}
