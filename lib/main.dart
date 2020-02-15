import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

void main() => runApp(YasUygulamasi());

// Hata diyor ki yön belirten bir üst widget yok önce onu belirtmemiz lazım.
// Önce yapacağımız uygulamada neler olmalı neye benzemeli ona karar verelim
// Bir butona ihtiyaç var kullanıcı tarih alanından alıp okucaz.
// Butona basıldıktan sonrada ekranda kullanıcının yaşını hesaplayıp göstercez !

// Tarih alanının nasıl alındığını bilmiyorum ama internetten hemen bakalım.
// Kopyaladığım kodu yeni bir dosyaya yazdıralım.

class YasUygulamasi extends StatefulWidget {
  @override
  _YasUygulamasiState createState() => _YasUygulamasiState();
}

class _YasUygulamasiState extends State<YasUygulamasi> {
  Duration yasFarki;
  String sifirYasVeyaSecilmemeDegeri = "Lütfen doğum tarihinizi giriniz";
  String yazilacakSonuc = "Lütfen ilk kez doğum tarihinizi giriniz";
  // List<BottomNavigationBarItem> items = new List<BottomNavigationBarItem>();
  // items.add(new BottomNavigationBarItem(
  //     icon: Icon(Icons.phone), title: Text("Phone")));
  // items.add(new BottomNavigationBarItem(
  //     icon: Icon(Icons.home), title: Text("Home")));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text("Yaş Hesaplama"),
              centerTitle: true,
            ),
            //bottomNavigationBar: BottomNavigationBar(items: items),
            body: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 70.0,
                      ),
                      child: DateTimeField(
                        style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        onChanged: (date) {
                          setState(() {
                            yasFarki = DateTime.now().difference(date);
                            int fark = ((yasFarki?.inDays ?? 0) / 365).round();

                            yazilacakSonuc = fark == 0
                                ? sifirYasVeyaSecilmemeDegeri
                                : "Yaşınız: " + fark.toString();
                          });
                        },
                        format: DateFormat("dd-MM-yyyy"),
                        onShowPicker: (context, currentValue) {
                          return showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              initialDate: currentValue ?? DateTime.now(),
                              lastDate: DateTime(2100));
                        },
                      ),
                    ),
                    Text(yazilacakSonuc,
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                    // Text(
                    //   ((yasFarki.inDays * 12 / 365) % 12).round().toString() +
                    //       " ay, " +
                    //       (yasFarki.inDays -
                    //               ((yasFarki.inDays / 365).round() * 365))
                    //           .toString() +
                    //       " gün sonra " +
                    //       ((yasFarki.inDays / 365) + 1).round().toString() +
                    //       " yaşınızdan gün alacaksınız.",
                    // )
                  ],
                ),
              ),
            )));
  }
}
// KOdu doğrudan kullanmıyorum. Kendimize göre değişiklik yaparız.
