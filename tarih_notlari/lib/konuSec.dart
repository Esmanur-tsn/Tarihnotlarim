import 'package:flutter/material.dart';
import 'package:tarih_notlari/anlatim.dart';
import 'package:tarih_notlari/anlatim3.dart';
import 'package:tarih_notlari/anlatim4.dart';
import 'package:tarih_notlari/anlatim5.dart';
import 'package:tarih_notlari/hakkinda.dart';
import 'package:tarih_notlari/notlar.dart';


class KonuSecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tarihte İlkler"),
          titleTextStyle: TextStyle(fontSize: 40.0, color: Colors.black),
          //yazı boyutu ve rengi
          backgroundColor: Colors.deepOrangeAccent,
        ),

        body:Column(
          children: <Widget>[

            new Container(
              color: Colors.amberAccent,

              padding: EdgeInsets.all(10),
              //ignore: deprecated_member_use
              child: new OutlinedButton(
                child: Text("Osmanlı Devleti Kuruluş Dönemi (1299-1453)", textAlign: TextAlign.center,  style: TextStyle(fontSize: 25, color: Colors.brown,)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => konu_anlatim()),
                  );
                },
              ),
            ),

            SizedBox(height: 10.0),
            new Container(),


            Container(
              color:  Colors.amberAccent,

              padding: EdgeInsets.all(10),
              child: new OutlinedButton (
                child: Text("Osmanlı Devleti Yükseliş Dönemi(1453-1599)", textAlign: TextAlign.center,  style: TextStyle( fontSize: 25, color: Colors.brown,)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => konu_anlatim3()),
                  );
                },
              ),
            ),
            SizedBox(height: 10.0),
            Container(),

            Container(
              color: Colors.amberAccent,
              padding:  EdgeInsets.all(10),
              child: OutlinedButton(
                child: Text(" Osmanlı Devleti Dağılma Dönemi (1792-1922)", textAlign:  TextAlign.center, style: TextStyle( color: Colors.brown, fontSize: 25 ),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => konu_anlatim4()));
                },
              ),
            ),
            SizedBox(height: 10.0),
            Container(),

            Container(
              color: Colors.amberAccent,
              padding:  EdgeInsets.all(10),
              child: OutlinedButton(
                child: Text("Milli Mücadele/Kurtuluş Savaşı", textAlign:  TextAlign.center, style: TextStyle( color: Colors.brown, fontSize: 25 ),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => konu_anlatim5()));
                },
              ),
            ),
            SizedBox(height: 10.0),
            Container(),

            Container(
              color: Colors.amberAccent,
              padding:  EdgeInsets.all(10),
              child: OutlinedButton(
                child: Text("Hakkımızda", textAlign:  TextAlign.center, style: TextStyle( color: Colors.brown, fontSize: 25 ),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => hakkinda()));
                },
              ),
            ),
          ],
        )
    );

  }
}