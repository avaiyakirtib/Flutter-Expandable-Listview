import 'package:cartdemo/commans/constants.dart';
import 'package:flutter/material.dart';

import 'app_check_box.dart';
import 'app_expanded_tile.dart';

class ShowDialog {

  static showFilter(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (c) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: Colors.blue, width: 2)),
          contentPadding: const EdgeInsets.only(top: 10.0),
          content: StatefulBuilder(
            builder: (context, setSBState) => SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      children: [
                        AppExpandedTile(
                          boxTitle: "Phone",
                          boxText: '➖',
                          children: [
                            AppExpandedTile(
                                boxTitle: "Colors",
                                boxText: '➖',
                                children: [
                                  ...colors.map((colors) => AppCheckBox(
                                        title: colors,
                                        onChanged: (v) {
                                          if (filterData.contains(colors)) {
                                            filterData.remove(colors);
                                          } else {
                                            filterData.add(colors);
                                          }

                                          setSBState(() {});
                                          //you need to reflect the main ui, also call `setState((){})`
                                        },
                                        value: filterData.contains(colors),
                                      )),
                                ]),
                            AppExpandedTile(
                                boxTitle: "Brands",
                                boxText: '➖',
                                children: [
                                  ...brands.map((brands) =>
                                      AppCheckBox(
                                        title: brands,
                                        onChanged: (v) {
                                          if (filterData.contains(brands)) {
                                            filterData.remove(brands);
                                          } else {
                                            filterData.add(brands);
                                          }

                                          setSBState(() {});
                                          //you need to reflect the main ui, also call `setState((){})`
                                        },
                                        value: filterData.contains(brands),
                                      )),
                                ]),
                            AppExpandedTile(
                                boxTitle: "Price",
                                boxText: '➖',
                                children: [
                                  ...Price.map((Price) => AppCheckBox(
                                        title: Price,
                                        onChanged: (v) {
                                          if (filterData1.contains(Price)) {
                                            filterData1.remove(Price);
                                          } else {
                                            filterData1.add(Price);
                                          }
                                          setSBState(() {});
                                          //you need to reflect the main ui, also call `setState((){})`
                                        },
                                        value: filterData1.contains(Price),
                                      )),
                                ]),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        AppExpandedTile(
                            boxTitle: "Laptop",
                            boxText: '➖',
                            children: [
                              AppExpandedTile(
                                  boxTitle: "Colors",
                                  boxText: '➖',
                                  children: [
                                    ...Lcolor.map((Lcolor) => AppCheckBox(
                                          title: Lcolor,
                                          onChanged: (v) {
                                            if (filterData1
                                                .contains(Lcolor)) {
                                              filterData1.remove(Lcolor);
                                            } else {
                                              filterData1.add(Lcolor);
                                            }

                                            setSBState(() {});
                                            //you need to reflect the main ui, also call `setState((){})`
                                          },
                                          value: filterData1.contains(Lcolor),
                                        )),
                                  ]),
                              AppExpandedTile(
                                  boxTitle: "Brands",
                                  boxText: '➖',
                                  children: [
                                    ...LaptopBrands.map((laptopBrands) =>
                                        AppCheckBox(
                                          title: laptopBrands,
                                          onChanged: (v) {
                                            if (filterData1
                                                .contains(laptopBrands)) {
                                              filterData1.remove(laptopBrands);
                                            } else {
                                              filterData1.add(laptopBrands);
                                            }

                                            setSBState(() {});
                                            //you need to reflect the main ui, also call `setState((){})`
                                          },
                                          value: filterData1.contains(laptopBrands),
                                        )),
                                  ]),
                              AppExpandedTile(
                                  boxTitle: "Price",
                                  boxText: '➖',
                                  children: [
                                    ...LPrice.map((LPrice) => AppCheckBox(
                                          title: LPrice,
                                          onChanged: (v) {
                                            if (filterData
                                                .contains(LPrice)) {
                                              filterData.remove(LPrice);
                                            } else {
                                              filterData.add(LPrice);
                                            }

                                            setSBState(() {});
                                          },
                                          value: filterData.contains(LPrice),
                                        )),
                                  ]),
                            ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
