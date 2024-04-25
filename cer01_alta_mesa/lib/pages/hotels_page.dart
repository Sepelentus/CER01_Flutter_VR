import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelsPage extends StatelessWidget {
const HotelsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text(
          'Hoteles',
          style: GoogleFonts.robotoSlab(),
        ),
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
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
                    image: AssetImage("assets/images/Continental Entry.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY:0),
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
                padding: EdgeInsets.only(
                    right: screenSize.width * 0.05,
                    top: screenSize.height * 0.01),
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
                          Center(
                            child: Text(
                              'Hoteles disponibles',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Roboto Slab',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: screenSize.height * 0.5,
                    left: screenSize.width * 0.10),
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.2,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(83, 215, 105, 8),
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
                      Positioned(
                        left: screenSize.width * 0.03,
                        top: 20,
                        child: SizedBox(
                          width: 160,
                          height: screenSize.height * 0.15,
                          child: Text(
                            'Ubicacion:\nLas Palmas, Viña del Mar\n\nCoordenadas:\n-33.04141202521962, -71.55413475000027\n\nServicios disponibles:\nSastreria, Armeria',
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
                        left: screenSize.width * 0.4,
                        top: 20,
                        child: SizedBox(
                          width: 150,
                          height: screenSize.height * 0.15,
                          child: Container(
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/map_hotel1.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: BeveledRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                )
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              )
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: screenSize.height * 0,
                    left: screenSize.width * 0.10),
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.2,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(83, 215, 105, 8),
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
                      Positioned(
                        left: screenSize.width * 0.03,
                        top: 20,
                        child: SizedBox(
                          width: 160,
                          height: screenSize.height * 0.15,
                          child: Text(
                            'Ubicacion:\nSan Roque, Valparaiso\n\nCoordenadas:\n-33.063708116932595, -71.58952062732124\n\nServicios disponibles:\nSuministros, Medicina',
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
                        left: screenSize.width * 0.4,
                        top: 20,
                        child: SizedBox(
                          width: 150,
                          height: screenSize.height * 0.15,
                          child: Container(
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/map_hotel2.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: BeveledRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                )
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              )
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    top: screenSize.height * 0.5,
                    left: screenSize.width * 0.10),
                child: Container(
                  width: screenSize.width * 0.8,
                  height: screenSize.height * 0.2,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(83, 215, 105, 8),
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
                      Positioned(
                        left: screenSize.width * 0.03,
                        top: 20,
                        child: SizedBox(
                          width: 160,
                          height: screenSize.height * 0.15,
                          child: Text(
                            'Ubicacion:\nQuilpue, Quilpue\n\nCoordenadas:\n-33.04863042127397, -71.43352103913767\n\nServicios disponibles:\nCartografia',
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
                        left: screenSize.width * 0.4,
                        top: 20,
                        child: SizedBox(
                          width: 150,
                          height: screenSize.height * 0.15,
                          child: Container(
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/map_hotel3.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: BeveledRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                )
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              )
            )
          ],
        ),
      ),
    );
  }
}