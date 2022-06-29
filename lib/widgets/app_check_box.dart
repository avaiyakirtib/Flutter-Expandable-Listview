import 'package:flutter/material.dart';

import '../commans/colors.dart';



class AppCheckBox extends StatelessWidget {
  final  bool value;
  final  String title;
  final  void Function(bool?) onChanged;
  const AppCheckBox({required this.value,required this.onChanged,required this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        value: value,
        checkColor: BLACK_COLOR,
        activeColor: WHITE_COLOR,
        title: Text(title),
        contentPadding: EdgeInsets.zero,
        onChanged: onChanged);
  }
}

