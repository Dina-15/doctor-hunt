import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/doctors_response_model.dart';
import 'feature_doctor_item.dart';

class FeatureDoctorListView extends StatelessWidget {
  const FeatureDoctorListView({super.key, required this.doctorsList});

  final List<DoctorsData?> doctorsList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) =>
            FeatureDoctorItem( doctorData: doctorsList[index]),
      ),
    );
  }
}
