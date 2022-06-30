
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_web/app/modules/home/views/widget/mobile/home.dart';
import 'package:personal_web/app/modules/home/views/widget/mobile/kontak.dart';
import 'package:personal_web/app/modules/home/views/widget/mobile/pengalaman.dart';
import 'package:personal_web/app/modules/home/views/widget/mobile/project_release.dart';
import 'package:personal_web/app/modules/home/views/widget/mobile/tentang.dart';
import '../../../controllers/home_controller.dart';




class HomeViewMobile extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
     var screenSize = MediaQuery.of(context).size;
    controller.opacity = controller.scrollPosition < screenSize.height * 0.40
        ? controller.scrollPosition / (screenSize.height * 0.40)
        : 1;
    return Scaffold(
        appBar: screenSize.width < 600 ?  AppBar(
          backgroundColor:  Colors.white,
          iconTheme: IconThemeData(color: Colors.blue),
        
        ): PreferredSize(
            preferredSize: Size.fromHeight(100.0), // here the desired height
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(0,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
                    },
                    child: Text("Home"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(1,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
                    },
                    child: Text("Tentang"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(2,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
                    },
                    child: Text("Pengalaman"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(3,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
                    },
                    child: Text("Portofolio"),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.page.animateToPage(4,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
                    },
                    child: Text("Kontak"),
                  ),
                ],
              ),
            )),
        drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue
            ),
            child: Column(children: [
              // Image.asset("assets/logobam.png",
              //  height: screenSize.height * 0.12, 
              // ),
              // Text("KSPPS BINA AULIADI MANDIRI",style: Theme.of(context)
              //     .textTheme
              //     .titleMedium!
              //     .copyWith(color: color3), textAlign: TextAlign.center,)
            ],)
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text('HOME'),
            onTap: () {
              controller.page.animateToPage(0,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
            ),
            title:Text('TENTANG'),
            onTap: () {
              controller.page.animateToPage(1,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
              Navigator.pop(context);
            },
          ),
           ListTile(
            leading: Icon(
              Icons.price_check_outlined,
            ),
            title:Text('PENGALAMAN'),
            onTap: () {
              controller.page.animateToPage(2,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
              Navigator.pop(context);
            },
          ),
           ListTile(
            leading: Icon(
              Icons.people
            ),
            title:Text('PORTOFOLIO'),
            onTap: () {
               controller.page.animateToPage(3,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
              Navigator.pop(context);
            },
          ),
           ListTile(
            leading: Icon(
              Icons.image
            ),
            title:Text('KONTAK'),
            onTap: () {
               controller.page.animateToPage(4,duration:Duration(milliseconds: 500),curve: Curves.fastOutSlowIn );
              Navigator.pop(context);
            },
          ),
        ],
      ),
        ),
        body: PageView(
          controller: controller.page,
          scrollDirection: Axis.vertical,
          allowImplicitScrolling: true,
          children: [
            Container(
              child: Home(),
            ),
            Container(
              color: Colors.white,
              child: TentangMobile(),
            ),
            Container(
              
              child: Pengalaman()
            ),
            Container(
              color: Colors.blue[50],
              child: ProjectRelease(controller: controller),
            ),
            Container(
              color: Colors.white,
              child : Kontak()
            ),
          ],
        ));
  }
}
