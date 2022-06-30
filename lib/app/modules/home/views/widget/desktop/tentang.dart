import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Tentang extends StatelessWidget {
  const Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Lottie.asset("lottie/99429-boy-thinking.json", fit:BoxFit.contain),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2.2,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: MediaQuery.of(context).size.height / 10,),
              Text("Tentang Saya",textAlign: TextAlign.start,style: TextStyle(fontSize: 30),),
              Text("Saat ini saya seorang IT Programer di BUMN, saya memegang pembuatan system Mobile Developer, dan saya suka tantangan menarik, mampu beradaptasi dengan cepat,serta menerima project aplikasi berdasarkan permintaan client.",
               textAlign: TextAlign.start,
               style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: Colors.black54)),
              SizedBox(height: MediaQuery.of(context).size.height / 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(label: Text("Python"),elevation:0.1, backgroundColor: Colors.blue[50],),
                  Chip(label: Text("Dart"),elevation:0.1, backgroundColor: Colors.blue[50],),
                  Chip(label: Text("Django"),elevation:0.1, backgroundColor: Colors.blue[50],),
                  Chip(label: Text("Mariadb"),elevation:0.1, backgroundColor: Colors.blue[50],),
                  Chip(label: Text("Flutter"),elevation:0.1, backgroundColor: Colors.blue[50],),
                  Chip(label: Text("HTML"),elevation:0.1, backgroundColor: Colors.blue[50],),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Card(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0, top: 15.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.stay_current_portrait, color: Colors.amberAccent,),
                        Text("Mobile Applications",style: Theme.of(context).textTheme.headline5!
                                .copyWith(color: Colors.black54) ),
                        Text("Membuat aplikasi berbasis mobile untuk cross platform Android dan iOS menggunakan bahasa pemrograman Dart dan framework Flutter.")
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Padding(
                   padding: const EdgeInsets.only(left:20.0, top: 15.0,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(MdiIcons.powershell, color: Colors.orange,),
                        Text("Backend Development",style: Theme.of(context).textTheme.headline5!
                                .copyWith(color: Colors.black54) ),
                        Text("Membuat RestfullAPI menggunakan framework Django untuk keperluan data handling dari sisi Mobile Applications.")
                      ],
                    ),
                  ),
                ),
              )
            ],),
          ),
        ],
      ),
    );
  }
}