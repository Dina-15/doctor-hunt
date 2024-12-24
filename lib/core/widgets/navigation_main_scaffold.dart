import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/widgets/app_background_image.dart';
import 'package:doctor_hunt/features/login/data/models/login_response.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../features/home/ui/screens/home_screen.dart';
import 'navigation_bar_item.dart';

class NavigationMainScaffold extends StatefulWidget {
  const NavigationMainScaffold({super.key, required this.userData});
  final LoginResponse? userData;
  @override
  State<NavigationMainScaffold> createState() => _NavigationMainScaffoldState();
}

class _NavigationMainScaffoldState extends State<NavigationMainScaffold> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeScreen(),
      const Scaffold(), // create later
      const Scaffold(),
      const Scaffold(),
    ];
    final List<Widget> items = [
      NavigationBarItem(
        icon: AppAssets.homeIcon,
        barIndex: index,
        iconIndex: 0,
      ),
      NavigationBarItem(
        icon: AppAssets.favIcon,
        barIndex: index,
        iconIndex: 1,
      ),
      NavigationBarItem(
        icon: AppAssets.bookIcon,
        barIndex: index,
        iconIndex: 2,
      ),
      NavigationBarItem(
        icon: AppAssets.messageIcon,
        barIndex: index,
        iconIndex: 3,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        body: AppBackgroundImage(child: screens[index]),
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          height: 65,
          index: index,
          buttonBackgroundColor: AppColors.primaryColor,
          backgroundColor: Colors.transparent,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}