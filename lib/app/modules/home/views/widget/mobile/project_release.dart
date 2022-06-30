
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../controllers/home_controller.dart';


class ProjectRelease extends StatelessWidget {
  const ProjectRelease({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {
          controller.controllerSlider.previousPage(
            duration: Duration(milliseconds: 500)
          );
        }, icon: Icon(Icons.navigate_before)),
        Container(
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width / 1.2,
          child: CarouselSlider(
              carouselController: controller.controllerSlider,
              options: CarouselOptions(
                autoPlay: false,
                // autoPlayInterval: Duration(seconds: 3),
                // autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                // enableInfiniteScroll: false,
                // pauseAutoPlayOnTouch: true,
                initialPage: controller.dataproject.last.length,
                enlargeCenterPage: true,
                aspectRatio: 1.0,
                scrollPhysics:ScrollPhysics()
              ),
              items: controller.dataproject.map((e) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(e['cover'],
                          height: MediaQuery.of(context).size.height * 0.50,
                          scale:3,
                          semanticLabel:e['title']
                          ),

                    ],
                  ),
                );
              }).toList()),
        ),
        IconButton(
            onPressed: () {
              controller.controllerSlider.nextPage(duration: Duration(milliseconds: 500));
            },
            icon: Icon(Icons.navigate_next)),
      ],
    );
  }
}
