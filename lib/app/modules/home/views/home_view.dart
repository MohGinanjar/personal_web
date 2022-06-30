
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/views/widget/desktop/homeviewdesktop.dart';
import '../../home/views/widget/mobile/homeviewmobile.dart';
import '../../home/views/widget/responsive_layout.dart';
import '../../home/views/widget/tablet/homeviewtablet.dart';


import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: HomeViewMobile(),
        tabletBody:HomeViewTablet(),
        desktopBody: HomeViewDesktop(),
      ),
    );
  }
}
