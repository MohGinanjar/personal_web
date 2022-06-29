import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController page = PageController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  List<Map> dataproject = [
    {
      'title':"PT. Hino Motors Sales Indonesia",
      'cover':"assets/1.png",
      'description':""
    },
    {
      'title':"PT. Surveyor Indonesia",
      'cover':"assets/2.png",
      'description':""


//Solusi dan Informasi Human Capital kini hadir dalam genggaman Anda! Monitor dan Kelola daftar hadir Anda dengan mudah dimanapun Anda berada, akses informasi terbaru terkait kepegawaian dan kembangkan diri Anda dengan mengikuti berbagai pelatihan digital tentang produk jasa PT Surveyor Indonesia atau materi self-development yang menarik untuk diikuti.

// InSIde - Innovative Surveyor Indonesia Development hadir untuk Anda

// Saat ini InSIde mengakomodir Anda dengan beberapa fitur :
// 1. Presensi / Kehadiran : Log in dengan hanya satu klik melalui aplikasi InSIde
// 2. SI Event : Ketahui event terbaru dan menarik yang bisa Anda ikuti di SI
// 3. Highlights : Akses informasi kegiatan dan SKD terbaru
// 4. SI Course : Ikuti Course Produk jasa dan employee on boarding untuk dapatkan sertifikatnya
// 5. SI Topik : Akses Video yang menarik bagi pengembangan diri Anda dan ketahui berbagai informasi yang perlu Anda ketahui seputar Surveyor Indonesia
    },
    {
      'title':"KSPPS Bina Auliadi Mandiri",
      'cover':"assets/3.png",
      'description':""
    },
    {
      'title':"PT. Sigap",
      'cover':"assets/4.png",
      'description':""
    },
  ];

  @override
  void onClose() {}
  void increment() => count.value++;
}
