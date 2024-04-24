import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContractPage extends StatelessWidget {
  const ContractPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text(
          'Contrato',
          style: GoogleFonts.robotoSlab(),
        ),
        toolbarOpacity: 1,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
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
                    image: AssetImage("assets/images/Contract.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                ),
              ),
            ),
            // Foto de objetivo
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: screenSize.height * 0.3,
                    right: screenSize.width * 0.02),
                child: Container(
                  width: screenSize.width * 0.53,
                  height: screenSize.height * 0.45,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/target.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                            strokeAlign: BorderSide.strokeAlignCenter)),
                  ),
                ),
              ),
            ),
            // Informacion de objetivo
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: screenSize.height * 0.3,
                    left: screenSize.width * 0.02),
                child: Container(
                  width: screenSize.width * 0.4,
                  height: screenSize.height * 0.45,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(195, 162, 15, 15),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x7F000000),
                        blurRadius: 4,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Revisar para integrar los textos a un widget para no copiar y pegar tanto
                      Positioned(
                        left: 14,
                        top: 15,
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: Text(
                            'Objetivo de contrato',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 40,
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: Text(
                            'Nombre\nEduardo Olivares',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 75,
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: Text(
                            'Recompensa\n35.000.000 CLP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 115,
                        child: SizedBox(
                          width: 160,
                          height: 40,
                          child: Text(
                            'Cargo\nTraficante de armas',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 155,
                        child: SizedBox(
                          width: 160,
                          height: 40,
                          child: Text(
                            'Trabaja para\nFDLP V',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 195,
                        child: SizedBox(
                          width: 160,
                          height: 40,
                          child: Text(
                            'Tipo de trabajo\nCaptura e interrogacion',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 235,
                        child: SizedBox(
                          width: 160,
                          height: 40,
                          child: Text(
                            'Alias Conocido\n"Badger"',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 275,
                        child: SizedBox(
                          width: 160,
                          height: 40,
                          child: Text(
                            'Informacion miscelanea\nTrabaja en grupo\nSoltero',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Roboto Slab',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Separador
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.225),
                child: Container(
                  width: screenSize.width * 0.9,
                  child: Divider(
                    color: Color.fromARGB(255, 0, 0, 0),
                    thickness: 3,
                  ),
                ),
              ),
            ),
            // Mapa
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: screenSize.height * 0.1),
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.25,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/map.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                            color: Colors.black,
                            width: 1.5,
                            strokeAlign: BorderSide.strokeAlignCenter)),
                  ),
                ),
              ),
            ),
            // Texto
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    right: screenSize.width * 0.05,
                    bottom: screenSize.height * 0.02),
                child: Container(
                  width: screenSize.width * 0.6,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Color(0x99111111),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x7F000000),
                        blurRadius: 4,
                        offset: Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      ListTile(
                        title: Text(
                          'Ultima localizacion conocida',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontFamily: 'Roboto Slab',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        leading: Icon(Icons.map),
                        iconColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
