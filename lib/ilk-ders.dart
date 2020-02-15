import 'package:flutter/material.dart';
// Bu dosya ilk dersin örnekleri bunu arşivleyelim.
void main() => runApp(KolayliklaElemanOlustur());

class KolayliklaElemanOlustur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        Center (child: 
        // Row Örneği
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //   // Buraya her çeşit widget gelebilir.
        //   Icon(Icons.star, size: 55),
        //   Icon(Icons.star, size: 55),
        //   Icon(Icons.star, size: 55),
        // ],)

        // Column Örneği
        // Column(
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: <Widget>[
        //   // Buraya her çeşit widget gelebilir.
        //   Icon(Icons.star, size: 55),
        //   Icon(Icons.star, size: 55),
        //   Icon(Icons.star, size: 55),
        // ],)

// IntrinsicWidth  örneği ( Bu widget duşarda olmalı.)
// IntrinsicWidth(
//   child:  Column(
//   mainAxisAlignment: MainAxisAlignment.end,
//   crossAxisAlignment: CrossAxisAlignment.stretch, // Bunu yazmayınca olmuyor tabii
//   // strecth yaymak demek 
//   children: <Widget> [
//     RaisedButton(
//               onPressed: () {},
//               child: Text('Kısa button'),
//             ),
//             RaisedButton(
//               onPressed: () {},
//               child: Text('Orta yazılı button'),
//             ),
//     RaisedButton(
//               onPressed: () {},
//               color: Colors.red,
//               textColor: Colors.white,
//               padding: const EdgeInsets.all(0.0),
//               child: Container(
//                 padding: const EdgeInsets.all(10.0),
//                 decoration: const BoxDecoration(
//              //color: Colors.red
//             ),
//                 child: 
//               Text("Yine en uzun buton olacak bu button."),
//               )
//               // Peki neden sadece yazıyı kapladı??? Şimdi ona bakalım.
//               // PAdding den dolayı!!!
//               // Bu kısma biz basitçe text ekledik ama, bu butonun rengini ve diğer yerlerini değiştirmek ve müdahele etmek için içine Container ekleyelim. dikkat dışına değil içine !
//             ),
//   ]
// )
// )


// Stack örneğine geçelim bu konu çok önemli 
// Örneğin bir haritanın üzerine button eklemek istersek stack kullanmamız lazım
// Yıldız işaretini sol üste, telefon isaretini sağ alta yollayalım.
// Stack(
//     fit: StackFit.expand,
//     children: <Widget>[
//       Positioned(
//         left:0 ,//Yukardan sıfır pixel olacak.
//         top:0, // Soldan sıfır pixel olacak
//         child: Icon(Icons.star, size: 50), // Tam olarak yerini belirtmezsek ortaya oturur.
//       ),
//       Positioned(
//         right:0 ,//Yukardan sıfır pixel olacak.
//         bottom:0, // Soldan sıfır pixel olacak
//         child: Icon(Icons.phone, size: 50), // Tam olarak yerini belirtmezsek ortaya oturur.
//       ),
      
//     ],
//   )

// Expanded örneği

Column(// Bu kolonu neden aşağıya doğru yaymadı çünkü Expanded kullanmadık.
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
// Bu ilk expanded kolon için.
Expanded(child: 
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[
  Expanded(flex: 3, child: 
    Container(color: Colors.blue,
    child:
      Center(child: 
        Text("Bu 3 kat")
        ,) 
        ,)
        ,),

  Expanded(flex: 1, child: 
    Container(color:Colors.cyan,
      child:
      Center(child: 
        Text("Bu 1 kat")
        ,) 
        ,)
        ,),

        Expanded(flex:2, child: 
    Container(color:Colors.orange,
    child:
      Center(child: 
        Text("Bu 2 kat")
        ,) 
        ,)
        ,),
],

)), // aşağıdaki 1. bu ikinci expanded

Expanded(
  child: 
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[
  Expanded(flex: 1, child: 
    Container(color: Colors.green,
    child:
      Center(child: 
        Text("Bu 1 kat")
        ,) 
        ,)
        ,),

  Expanded(flex: 2, child: 
    Container(color:Colors.red,
      child:
      Center(child: 
        Text("Bu 2 kat")
        ,) 
        ,)
        ,),

        Expanded(flex:3, child: 
    Container(color:Colors.yellow,
    child:
      Center(child: 
        Text("Bu 3 kat")
        ,) 
        ,)
        ,),
],

),
)
],)
        )
        ,)
      // hata varmış bu ekranda tam görünmüyor!!!
    );
  }
}
