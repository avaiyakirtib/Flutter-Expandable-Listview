import 'package:flutter/material.dart';
import 'alert_dialog/brand_filter.dart';
import 'commans/colors.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: DARK_BLUE_COLOR,
        ),
        debugShowCheckedModeBanner: false,
        home:  const BrandFilter()
    );
  }
}

