import 'package:carousel_slider/carousel_slider.dart';
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
                  TextButton(
                    onPressed: () {
                      controller.page.jumpToPage(0);
                    },
                    child: Text("Home"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.jumpToPage(1);
                    },
                    child: Text("Tentang"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.jumpToPage(2);
                    },
                    child: Text("Pengalaman"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.jumpToPage(3);
                    },
                    child: Text("Portofolio"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.jumpToPage(4);
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
              child: ListView(
                children: [Tentang(), ProjectRelease(controller: controller)],
              ),
            ),
            Container(
              child: Center(child: Text("3")),
            ),
            Container(
              child: Center(child: Text("4")),
            ),
            Container(
              child: Center(child: Text("5")),
            ),
          ],
        ));
  }
}

class ProjectRelease extends StatelessWidget {
  const ProjectRelease({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: Colors.green,
      child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              // setState(() {
              //   _currentIndex = index;
              // });
            },
          ),
          items: controller.dataproject
              .map((e) => Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [
                                0.3,
                                1
                              ],
                              colors: [
                                Color(0xffff4000),
                                Color(0xffffcc66),
                              ]),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Data",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold)),
                            Text("Data",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
