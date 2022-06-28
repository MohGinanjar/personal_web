import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:personal_web/app/modules/home/views/widget/home.dart';
import 'package:personal_web/app/modules/home/views/widget/tentang.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // here the desired height
          child: Container(
            height: 60,
            color: Colors.white60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed:(){
                  controller.page.jumpToPage(0);
                }, child: Text("Home"),),
                TextButton(onPressed:(){
                  controller.page.jumpToPage(1);
                }, child: Text("Tentang"),),
                TextButton(onPressed:(){
                  controller.page.jumpToPage(2);
                }, child: Text("Pengalaman"),),
                TextButton(onPressed:(){
                  controller.page.jumpToPage(3);
                }, child: Text("Portofolio"),),
                TextButton(onPressed:(){
                   controller.page.jumpToPage(4);
                }, child: Text("Kontak"),),
              ],
            ),
          )),
      body: PageView(
      controller: controller.page,
      scrollDirection: Axis.vertical,
      allowImplicitScrolling: true,
      children: [
        Container(
          child: Home(),),
        Container(
          child: Tentang(),),
        Container(child: Center(child: Text("3")),),
        Container(child: Center(child: Text("4")),),
        Container(child: Center(child: Text("5")),),
      ],
      )
    );
  }
}
