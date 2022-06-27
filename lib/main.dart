import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Personal Webiste Mohamad Ginanjar",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red[300]
      ),
    ),
  );
}
