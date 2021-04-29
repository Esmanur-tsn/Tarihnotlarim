import 'package:flutter/material.dart';
import 'package:tarih_notlari/konular.dart';
void main() {
  runApp(AnaSayfa()); //MpApp
}
class AnaSayfa extends StatelessWidget { //MyApp


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(

            title: Text('TARİH NOTLARIM'),
            titleTextStyle: TextStyle(fontSize: 28.0, color: Colors.black),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: SingleChildScrollView(

              child: Column(
                children: <Widget>[
                  LoginHome(
                  )
                ],
              )
          )
      ),
    );
  }
}
class LoginHome extends StatelessWidget{ //LogİnHome'u stateles widgettan oluşturuyoruz
  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}
Widget _LoginHome(BuildContext context) {



  final emailField = TextField(
    maxLength: 10,
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
        hintText: "Kullanıcı Adı",
        border:
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(
              32.0),
        )
    ),
  );

  final passwordField = TextField(
    keyboardType: TextInputType.number,
    maxLength: 8,
    obscureText: true,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),

        hintText: "Şifre",
        border:
        OutlineInputBorder(
          borderRadius: BorderRadius.circular(  //kenarları kıvırdık
              32.0),
        )
    ),
  );

  final loginButton = Material(
    elevation: 5.0,
    //hizlandırmak, konumlandırmak için. silikleşme
    borderRadius: BorderRadius.circular(32.0),
    color: Colors.deepOrange[500],

    child: MaterialButton(
      minWidth: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 18.0),
      //boşlukları ayarladık


      onPressed: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => tarih_Konular()),
        );
      },
      child: Text("İLERİ",
        textAlign: TextAlign.center,
        style: TextStyle(
          //fontFamily: "OrelegaOne-Regular.ttf",
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration
                .underline //underline ile yazının altına çizgi çektik.
        ),
      ),
    ),
  );

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset("assets/tarih_tarih.png"),

            SizedBox(height: 10.0),

            emailField,
            SizedBox(height: 10.0),
            passwordField,

            SizedBox(height: 15.0),
            loginButton,
          ],
        ),
      ),
    ),
  );
}