import 'package:flutter/material.dart';

class ButtonSettingsSection extends StatelessWidget {
  const ButtonSettingsSection({
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
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
