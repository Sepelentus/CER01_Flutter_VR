import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  final String usuario;
  final String icon;
  MainPage({required this.usuario, required this.icon});
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 150,horizontal: 125),
        child: Row(
          children: <Widget>[
            // Imagen de perfil
            Flexible(
              child: Container( 
                child: Column(
                  children: <Widget>[
                  CircleAvatar(
                  backgroundImage: AssetImage(icon),
                  radius: 32
                ),
                  ],
                ),
                
              ),
            ),
            // Texto de perfil
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15, top: 7.5),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Bienvenido',
                          style: GoogleFonts.robotoSlab(),
                          textScaler: TextScaler.linear(1.2),
                          ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          usuario,
                          style: GoogleFonts.robotoSlab(),),
                      ],
                    )
                  ]
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}