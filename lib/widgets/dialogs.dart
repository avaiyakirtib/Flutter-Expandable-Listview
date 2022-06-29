import 'package:cartdemo/commans/constants.dart';
import 'package:cartdemo/models/filter_iteams_model.dart';
import 'package:flutter/material.dart';

import '../commans/colors.dart';
import 'app_check_box.dart';
import 'app_expanded_tile.dart';

class ShowDialog {

  static showFilter(BuildContext context, FilterItemModel? filterModel) async {
    await showDialog(
      context: context,
      builder: (c) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
              side: BorderSide(color: BLUE_COLOR, width: 2)),
          contentPadding: const EdgeInsets.only(top: 10.0),
          content: StatefulBuilder(
            builder: (context, setSBState) => Container(
              padding: const EdgeInsets.all(10),
             child: SizedBox(
               height: MediaQuery.of(context).size.height*0.8,
               width: MediaQuery.of(context).size.width*0.8,
               child: ListView.builder(
                   physics:const BouncingScrollPhysics(),
                   shrinkWrap: true,
                   itemCount:filterModel!.item!.length ,
                   itemBuilder: (context,i){
                     return Expanded(
                       child: AppExpandedTile(
                         boxTitle: filterModel.item![i].name.toString(),
                         children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount:filterModel.item![i].subItem?.length ,
                            itemBuilder: (context,j)
                            {
                          return Expanded(
                            child: AppExpandedTile(
                                boxTitle: filterModel.item![i].subItem![j].name.toString(),

                                children: [
                                  ListView.builder(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount:filterModel.item![i].subItem![j].list?.length ,
                                      itemBuilder: (context,q){
                                    return AppCheckBox(
                                      title:filterModel.item![i].subItem![j].list![q].name.toString(),
                                      onChanged: (v) {
                                        if (filterData.contains(filterModel.item![i].subItem![j].list![q].name.toString())) {
                                          filterData.remove(filterModel.item![i].subItem![j].list![q].name.toString());
                                        } else {
                                          filterData.add(filterModel.item![i].subItem![j].list![q].name.toString());
                                        }

                                        setSBState(() {});
                                        //you need to reflect the main ui, also call `setState((){})`
                                      },
                                      value: filterData.contains(filterModel.item![i].subItem![j].list![q].name.toString()),
                                    );
                                  })

                                ]),
                          );
                        })
                         ],
                       ),
                     );
                   }
               ),
             ),
            ),
          ),
        );
      },
    );
  }
}
