import 'package:flutter/material.dart';
import 'package:flutter_web_udemy/constants.dart';
import 'delete_icon_button.dart';
import 'edit_icon_button.dart';

class ButtonSettingsSection extends StatelessWidget {
  ButtonSettingsSection({
    Key? key,
  }) : super(key: key);

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: Colors.blueGrey.shade100,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Text(
                  'Linkler',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  height: constraints.maxHeight * 0.1,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.greenAccent.shade100,
                      backgroundColor: Colors.green,
                      textStyle: const TextStyle(fontSize: 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {},
                    child: const Text('Add Button'),
                  ),
                ),
                const SizedBox(height: 7),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  height: constraints.maxHeight * 0.6,
                  child: Scrollbar(
                    controller: _scrollController,
                    thumbVisibility: true,
                    child: ReorderableListView(
                      scrollController: _scrollController,
                      onReorder: ((oldIndex, newIndex) {}),
                      children: [
                        for (var document in documents)
                          ListTile(
                            key: Key(document.title),
                            tileColor: Colors.green.shade300,
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 8),
                            title: Text(document.title),
                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                EditButton(document: document),
                                DeleteButton(document: document),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
