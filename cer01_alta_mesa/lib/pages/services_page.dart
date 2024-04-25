import 'dart:ui';

import 'package:cer01_alta_mesa/widgets/dialog_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text(
          'Servicios',
          style: GoogleFonts.robotoSlab(),
        ),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: screenSize.width,
                height: screenSize.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Continental Hotel.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  blendMode: BlendMode.darken,
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: DialogPopup(
                    title: 'Limpieza de evidencia',
                    title2: 'Limpieza',
                    desc1: 'Nombre clave: Charlie',
                    desc2: "Ubicacion: Villa Alemana",
                    desc3: "Precio: 10M - 25M",
                    color: Color.fromARGB(90, 165, 24, 9)
                  ),
                    
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.225),
                child: DialogPopup(
                    title: "Armamento y municion",
                    title2: 'Armamento',
                    desc1: "Nombre clave: Sommelier",
                    desc2: "Ubicacion: Valparaiso",
                    desc3: "Precio: Variable",
                    color: Color.fromARGB(90, 187, 95, 3),
                    ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.45),
                child: DialogPopup(
                    title: 'Vestimenta y armadura',
                    title2: 'Vestimenta',
                    desc1: 'Nombre clave: Seamstress',
                    desc2: "Ubicacion: Con Con",
                    desc3: "Precio: Variable",
                    color: Color.fromARGB(90, 2, 20, 101),
                  ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.675),
                child: DialogPopup(
                    title: 'Cartografia',
                    title2: 'Cartografia',
                    desc1: 'Nombre clave: Cartographer',
                    desc2: "Ubicacion: Quilpue",
                    desc3: "Precio: 5M - 10M",
                    color: Color.fromARGB(90, 125, 139, 16)
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

