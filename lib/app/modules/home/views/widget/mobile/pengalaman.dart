import 'package:flutter/material.dart';

class Pengalaman extends StatelessWidget {
  const Pengalaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ScrollPhysics(),
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0, left: 20, right: 20),
            child: ListView(
              physics: ScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Pengalaman",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                //  SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.1,
                // ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.withOpacity(0.25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Icon(Icons.stay_current_portrait, color: Colors.amberAccent,),

                          Text.rich(TextSpan(
                              text: "IT PROGRAMER ",
                              style: TextStyle(fontSize: 25),
                              children: [
                                TextSpan(
                                  text: "PT. Surveyor Indonesia",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                )
                              ])),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Text("08 Agustus 2021 - sekarang"),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Text(
                              " -build apps Mobile \n -build rest API need handle apps Mobile\n -Maintenance & Pengembangan apps Mobile")
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.withOpacity(0.25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Icon(Icons.stay_current_portrait, color: Colors.amberAccent,),

                          Text.rich(TextSpan(
                              text: "HR Specialist ",
                              style: TextStyle(fontSize: 25),
                              children: [
                                TextSpan(
                                  text: "PT. Hino Motors Sales Indonesia",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                )
                              ])),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 60),
                          Text("01 Juli 2014 - 16 Oktober 21"),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 60),
                          Text(
                              " -Maintenance building office (GA) \n -Asset Management (GA)\n -Maintenance & Pengembangan System (HR)\n -Membangun Proyek Mobile Apps (HR)")
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.withOpacity(0.25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 5.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Icon(Icons.stay_current_portrait, color: Colors.amberAccent,),

                          Text.rich(TextSpan(
                              text: "Operator - Material Handling ",
                              style: TextStyle(fontSize: 25),
                              children: [
                                TextSpan(
                                  text: "PT. Nissan Motor Indonesia",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                )
                              ])),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 60),
                          Text("08 Maret 2013 - 07 Maret 2014"),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 60),
                          Text(
                              " -Receiver Part \n -Memenuhi kebutuhan produksi\n -Maintenance Part")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0, left: 20, right: 20),
            child: ListView(
              physics: ScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Pendidikan",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.withOpacity(0.25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Icon(Icons.stay_current_portrait, color: Colors.amberAccent,),

                          Text.rich(TextSpan(
                              text: "Sistem Informasi ",
                              style: TextStyle(fontSize: 30),
                              children: [
                                TextSpan(
                                  text: "Universitas Gunadarma - Depok",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.blue),
                                )
                              ])),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Text("2017- Sekarang"),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Text(
                              "mulai mengembangkan skill di jenjang Universitas, sampai sekarang")
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.blue.withOpacity(0.25))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        top: 15.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Icon(Icons.stay_current_portrait, color: Colors.amberAccent,),

                          Text.rich(TextSpan(
                              text: "Rekayasa Perangkat Lunak ",
                              style: TextStyle(fontSize: 30),
                              children: [
                                TextSpan(
                                  text: "SMK N 2 PURWAKARTA",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.blue),
                                )
                              ])),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Text("2008-2011"),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 35),
                          Text("di jenjang SMK saya mengenal dengan teknologi")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
