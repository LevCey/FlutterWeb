import 'package:flutter/material.dart';
import 'package:flutter_web_udemy/constants.dart';
import 'delete_icon_button.dart';
import 'edit_icon_button.dart';

class ButtonSettingsSection extends StatelessWidget {
  ButtonSettingsSection({
    Key? key,
  }) : super(key: key);

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
                SizedBox(height: 40),
                Text(
                  'Linkler',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  height: constraints.maxHeight * 0.1,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.greenAccent.shade100,
                      backgroundColor: Colors.green,
                      textStyle: TextStyle(fontSize: 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    child: Text('Add Button'),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 7),
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  height: constraints.maxHeight * 0.6,
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: ReorderableListView(
                      children: [
                        for (var document in documents)
                          ListTile(
                            tileColor: Colors.green.shade300,
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            title: Text(document.title),
                            key: Key(document.title),
                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                EditButton(),
                                DeleteButton(),
                              ],
                            ),
                          ),
                      ],
                      onReorder: ((oldIndex, newIndex) {}),
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
