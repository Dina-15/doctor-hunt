import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/doctor_model.dart';
import '../../data/repo/doctor_data.dart';
import 'feature_doctor_card.dart';

class FeatureDoctorListView extends StatelessWidget {
  FeatureDoctorListView({super.key});

  final List<DoctorModel> doctorData = DoctorData.featureDoctorList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctorData.length,
        itemBuilder: (context, index) =>
            FeatureDoctorCard(cardData: doctorData[index]),
      ),
    );
  }
}
