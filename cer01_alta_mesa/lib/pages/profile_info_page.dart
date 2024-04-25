import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileInfoPage extends StatelessWidget {
  final String username;
  const ProfileInfoPage({required this.username, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text('Perfil', style: GoogleFonts.robotoSlab()),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
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
                    image: AssetImage("assets/images/backgroud_profile.png"),
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
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: screenSize.height * 0.3,
              ),
              child: Container(
                width: screenSize.width * 0.6,
                height: screenSize.height * 0.4,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/johnwick.jpg"),
                    fit: BoxFit.fitHeight,
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.05,
                  bottom: screenSize.height * 0.2),
              child: Container(
                width: screenSize.width * 0.4,
                height: 52,
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
                    Positioned(
                      left: screenSize.width * 0.04,
                      top: 16,
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: Text(
                          "Nombre:${this.username}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
          Positioned(
              left: screenSize.width * 0.5,
              top: screenSize.height * 1.835,
              child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  child: Container(
                    width: 65,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: screenSize.height * 0.2,
                    right: screenSize.width * 0.05),
                child: Container(
                  width: screenSize.width * 0.4,
                  height: 52,
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
                      Positioned(
                        left: screenSize.width * 0.125,
                        top: 16,
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: Text(
                            "Edad: 60",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
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
              )
            ),

            Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenSize.width * 0.05,
                  bottom: screenSize.height * 0.1),
              child: Container(
                width: screenSize.width * 0.4,
                height: 52,
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
                    Positioned(
                      left: screenSize.width * 0.06,
                      top: 16,
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: Text(
                          "Cargo: Asesino",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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
          Positioned(
              left: screenSize.width * 0.5,
              top: screenSize.height * 0.625,
              child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  child: Container(
                    width: 150,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: screenSize.height * 0.1,
                    right: screenSize.width * 0.05),
                child: Container(
                  width: screenSize.width * 0.4,
                  height: 52,
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
                      Positioned(
                        left: screenSize.width * 0.075,
                        top: 16,
                        child: SizedBox(
                          width: 200,
                          height: 50,
                          child: Text(
                            "Asesinatos: 48",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
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
              )),
        ],
      )),
    );
  }
}
