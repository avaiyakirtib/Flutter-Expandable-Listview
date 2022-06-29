import 'package:flutter/material.dart';
import '../models/filter_iteams_model.dart';
import '../widgets/dialogs.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class BrandFilter extends StatefulWidget {
  const BrandFilter({Key? key}) : super(key: key);

  @override
  State<BrandFilter> createState() => _BrandFilterState();
}

class _BrandFilterState extends State<BrandFilter> {
  FilterItemModel? filterModel;

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
     filterModel = FilterItemModel.fromJson(jsonDecode(response));
    setState(() {
    });
  }
  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           ShowDialog.showFilter(context,filterModel);
          }, child:  const Text('Filter'),
        ),
      ),
    );
  }
}