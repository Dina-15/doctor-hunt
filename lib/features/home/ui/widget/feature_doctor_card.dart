import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/features/home/data/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureDoctorCard extends StatelessWidget {
  const FeatureDoctorCard({super.key, required this.cardData});

  final DoctorModel cardData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96.w,
      margin: EdgeInsets.only(left: 3.w,right: 12.w, top: 20.h, bottom: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(5,0),
                color: AppColors.lightGrey, blurRadius: 10.r, spreadRadius: 2.r)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,size: 20, color: Colors.grey,),),
            horizontalSpace(10),
              Icon(
              Icons.star,
              color: Colors.amber,
              size: 20.r,
            ),
            Text('${cardData.rate}  ', style: AppStyles.getSemiBoldStyle(fontSize: 10, color: Colors.black),)
          ],),
          ClipRRect(
          borderRadius: BorderRadius.circular(50.r),
            child: Image.asset(
              cardData.image,
              height: 54.h,
              width: 54.w,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(8),
          Text(cardData.name, style: AppStyles.getSemiBoldStyle(fontSize: 12.sp, color: AppColors.boldTextColor),),
          Text("\$${cardData.pricePerHour!}.00/hours", style: AppStyles.getSemiBoldStyle(fontSize: 9.sp, color: AppColors.secondaryColor),),
        ],
      ),
    );
  }
}