import 'package:flutter/material.dart';
import '../commans/constants.dart';
import 'custom_check_box.dart';


class AppExpandedTile extends StatelessWidget {
  final String boxText;
  final String boxTitle;
  final List<Widget> children;
  const AppExpandedTile({required this.boxText,required this.boxTitle,required this.children,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
        dense: true,
        horizontalTitleGap: 0.0,
        minLeadingWidth: 0,
        contentPadding: const EdgeInsets.all(0),

        child: ExpansionTile(

          iconColor: Colors.black,
          textColor: Colors.black,
          childrenPadding: const EdgeInsets.only(left: 50),
          controlAffinity: ListTileControlAffinity.leading,
          tilePadding: const EdgeInsets.all(10),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomBox(text:boxText),
              Text(
                boxTitle,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          initiallyExpanded: () {
            for (final f in brands) {
              if (filterData.contains(f)) return true;
            }
            return false;
          }(),
          children: children,
        ));
  }
}


