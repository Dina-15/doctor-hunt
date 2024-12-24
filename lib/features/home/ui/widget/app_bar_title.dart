import 'package:doctor_hunt/core/helpers/constants.dart';
import 'package:doctor_hunt/core/helpers/shared_pref_helper.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/routing/routes_export.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatefulWidget {
  const AppBarTitle({super.key});

  @override
  State<AppBarTitle> createState() => _AppBarTitleState();
}

class _AppBarTitleState extends State<AppBarTitle> {
  String? userName;
  @override
  void initState()  {
    super.initState();
    _getUserName();
  }
  Future<void> _getUserName() async{
    final cachedName = await SharedPrefHelper.getString(SharedPrefKeys.userName);
     setState(() {
        userName = cachedName;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Hello, ${userName?? "user"}",
          style: AppStyles.getRegularStyle(color: Colors.white, fontSize: 20),
        ),
        verticalSpace(6),
        Text(
          "Find Your Doctor",
          style: AppStyles.getBoldStyle(
              color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
