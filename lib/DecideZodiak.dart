import 'package:flutter/cupertino.dart';

class DecideZodiak {
  final String nama;
  final String zodiak;
  String message;

  DecideZodiak({this.nama, this.zodiak});

  String userZodiak() {
    if (zodiak== "Pisces") {
      message = 'Jangan membandingkan dirimu dengan orang lain. Untuk kamu yang single, '
          'bertahan untuk seseorang yang tidak pasti hanya akan menyakiti perasaanmu';
    }
    else if (zodiak == "Aquarius") {
      message = 'Terkadang kamu butuh meditasi untuk menenangkan pikiranmu yang sedang kacau. Kamu terlalu mudah '
          'membuat seseorang merasa kecewa, kamu mempermainkan perasaan seseorang.';
    }
    else if (zodiak == "Aries"){
      message = 'Jangan terlalu keras dengan pikiranmu. Carilah peluang untuk mendapatkan pekerjaan baru';
    }
    else if (zodiak == "Taurus"){
      message = 'Terlalu banyak berdiam diri tidak baik untuk tubuhmu. Untuk kamu yang sedang berpacaran, '
          'jika kamu membtuhkan bantuan pasanganmu, katakanlah.';
    }
    else if (zodiak == "Gemini"){
      message = 'Terlalu baik dengan orang, kamu rentan dimanfaatkan. Berhati-hatilah '
          'akan ada yang menyakitimu, mungkin dia temanmu sendiri.';
    }
    else if (zodiak == "Cancer"){
      message = 'Untuk kamu yg single, akan ada banyak yang mendekatimu dan berminat kepadamu';
    }
    else if (zodiak == "Leo"){
      message = 'Seseorang mungkin iri dengan prestasimu. Untuk kamu yang single, perbanyak teman '
          'karena mungkin saja kamu menemukan cinta dari sana.';
    }
    else if (zodiak == "Virgo"){
      message = 'Hari ini kamu mungkin mengalami masalah pencernaan, cobalah untuk tetap istirahat lebih lama.'
          'Keuanganmu mengalami masalah, sebaiknya evalusasi anggaranmu.';
    }
    else if (zodiak == "Libra"){
      message = 'Cari tahu apa yang menjadi kelemahanmu untuk mencapai tujuan. Jika masalah sulit '
          'diatasi, mintalah bantuan pada orang terdekatmu.';
    }
    else if (zodiak == "Sagittarius"){
      message = 'Selalu menghindar dari masalah bukan cara yang baik. Perbaiki hubunganmu dengan seseorang.';
    }
    else if (zodiak == "Capricon"){
      message = 'Pekerjaan yang kamu kerjakan mungkin akan segera berakhir, tetapi kondisi kesehatanmu akan memburuk.';
    }
    else if (zodiak == "Scorpio"){
      message = 'Kerjasama dengan orang baru mungkin akan terjadi hari ini. Perjuangkan apa yang menjadi hakmu.';
    }
    return message;
  }
}



