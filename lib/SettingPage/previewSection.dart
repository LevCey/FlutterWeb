import 'package:flutter/material.dart';
import 'package:flutter_web_udemy/LinksLandingPage/links_landing_page_settings.dart';

class PreviewSection extends StatelessWidget {
  PreviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    'Ön İzleme Ekranı',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                      border: Border.all(width: 7, color: Colors.blueGrey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(17))),
                  child: LinksLandingPageSettings(
                    handle: '@socialhandle',
                  ),
                ),
                const SizedBox(height: 3),
              ],
            ),
          );
        },
      ),
    );
  }
}
