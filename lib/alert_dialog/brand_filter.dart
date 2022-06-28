import 'package:flutter/material.dart';
import '../widgets/dialogs.dart';

class BrandFilter extends StatelessWidget {
  const BrandFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ShowDialog.showFilter(context);
          }, child:  Text('Filter'),
        ),
      ),

    );
  }
}