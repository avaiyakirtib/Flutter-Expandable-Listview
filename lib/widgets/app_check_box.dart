import 'package:flutter/material.dart';



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
        checkColor: Colors.black54,
        activeColor: Colors.white54,
        title: Text(title),
        contentPadding: EdgeInsets.zero,
        onChanged: onChanged);
  }
}

