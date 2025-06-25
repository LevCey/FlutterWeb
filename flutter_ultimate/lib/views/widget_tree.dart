import 'package:flutte_ultimate/data/constants.dart';
import 'package:flutte_ultimate/data/notifiers.dart';
import 'package:flutte_ultimate/views/pages/home_page.dart';
import 'package:flutte_ultimate/views/pages/profile_page.dart';
import 'package:flutte_ultimate/views/pages/settings_page.dart';
import 'package:flutte_ultimate/views/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter map'),
        actions: [
          IconButton(
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;

              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool(
                KConstants.themeModeKey,
                isDarkModeNotifier.value,
              );
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(title: 'Settings'),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
