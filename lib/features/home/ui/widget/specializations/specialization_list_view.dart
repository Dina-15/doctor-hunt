import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specialization_response_model.dart';
import 'specialization_list_view_item.dart';

class SpecializationListView extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;
  const SpecializationListView(
      {super.key, required this.specializationDataList});

  @override
  State<SpecializationListView> createState() =>
      _SpecializationListViewState();
}

class _SpecializationListViewState extends State<SpecializationListView> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                //go to new screen for this specialization doctors
              });
            },
            child: SpecialityListViewItem(
              specializationsData: widget.specializationDataList[index],
            ),
          );
        },
      ),
    );
  }
}