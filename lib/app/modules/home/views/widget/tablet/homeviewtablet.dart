import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_web/app/modules/home/views/widget/tablet/home.dart';
import 'package:personal_web/app/modules/home/views/widget/tablet/pengalaman.dart';
import 'package:personal_web/app/modules/home/views/widget/tablet/project_release.dart';
import 'package:personal_web/app/modules/home/views/widget/tablet/tentang.dart';
import 'package:personal_web/app/modules/home/views/widget/tablet/kontak.dart';
import '../../../controllers/home_controller.dart';

class HomeViewTablet extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0), // here the desired height
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                    },
                    child: Text("Home"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                    },
                    child: Text("Tentang"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                    },
                    child: Text("Pengalaman"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(3,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                    },
                    child: Text("Portofolio"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(4,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                    },
                    child: Text("Kontak"),
                  ),
                ],
              ),
            )),
        body: PageView(
          controller: controller.page,
          scrollDirection: Axis.vertical,
          allowImplicitScrolling: true,
          children: [
            Container(
              child: Home(),
            ),
            Container(
              color: Colors.blue[50],
              child: Tentang(),
            ),
            Container(child: Pengalaman()),
            Container(
              color: Colors.blue[50],
              child: ProjectRelease(controller: controller),
            ),
            Container(color: Colors.blue[50], child: KontakTablet()),
          ],
        ));
  }
}
