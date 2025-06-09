import 'package:flutter/material.dart';
import 'package:flutter_web_udemy/SettingPage/previewSection.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueGrey.shade100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.white,
              child: PreviewSection(),
            ),
          ),
        ],
      ),
    );
  }
}
