import 'dart:ui';

import 'package:cer01_alta_mesa/pages/contract_page.dart';
import 'package:cer01_alta_mesa/pages/hotels_page.dart';
import 'package:cer01_alta_mesa/pages/login_page.dart';
import 'package:cer01_alta_mesa/pages/profile_page.dart';
import 'package:cer01_alta_mesa/pages/services_page.dart';
import 'package:cer01_alta_mesa/widgets/menu_card.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String usuario;
  final String icon;
  MainPage({required this.usuario, required this.icon});
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    print(screenSize);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        body: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
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
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.fill,
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

              // Tarjeta de bienvenida de perfil
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.1),
                  child: Container(
                    width: screenSize.width * 0.8,
                    height: 103,
                    padding: EdgeInsets.symmetric(
                      horizontal: 23,
                      vertical: 17,
                    ),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 250,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 25,
                                top: 0,
                                child: Container(
                                  width: 72,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("${this.icon}"),
                                      fit: BoxFit.fitHeight,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 121,
                                top: 16,
                                child: SizedBox(
                                  width: 99,
                                  height: 43,
                                  child: Text(
                                    "Bienvenido\n${this.usuario}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Roboto Slab',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Separador
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.235),
                  child: Container(
                    width: screenSize.width * 0.9,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ),
                  ),
              ),
              

              // Tarjetas de menu
              MenuCard(
                  width: screenSize.width * 0.7,
                  top: screenSize.height * 0.275,
                  nombre_servicio: 'Ver contrato',
                  descripcion1: 'Objetivo: Eduardo Olivares',
                  descripcion2: 'Monto: 35.000.000 CLP',
                  onTap: () {
                    print('ContractPage()');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ContractPage()));
                  },
                ),
              MenuCard(
                  width: screenSize.width * 0.7,
                  top: screenSize.height * 0.4275,
                  nombre_servicio: 'Servicios disponibles',
                  descripcion1: 'Encargado: Karan Soni',
                  descripcion2: 'Tipo servicio: Limpieza',
                  onTap: () {
                    print('ServicesPage()');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ServicesPage()));
                  },  
              ),
              MenuCard(
                  width: screenSize.width * 0.7,
                  top: screenSize.height * 0.585,
                  nombre_servicio: 'Hoteles disponibles',
                  descripcion1: 'Nombre: Lorem Ipsum',
                  descripcion2: 'Ubicacion: Valparaiso, Chile',
                  onTap: () {
                    print('HotelesPage()');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HotelsPage()));
                  },  
                ),


              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: screenSize.height * 0.1, left: screenSize.width * 0.05),
                  child: InkWell(
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
                        ListTile(
                          title: Text('Editar perfil', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Roboto Slab',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),),
                          leading: Icon(Icons.person),
                        )
                      ],
                    ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                    },
                  ),
                ),
              ),

              // Separador vertical
              Positioned(
                  left: screenSize.width * 0.5,
                  top: screenSize.height * 0.835,
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
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                  )
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: screenSize.width * 0.05, bottom: screenSize.height * 0.1),
                  child: InkWell(
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
                        ListTile(
                          title: Text('Cerrar sesion', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Roboto Slab',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),),
                          leading: Icon(Icons.exit_to_app),
                        )
                      ],
                    ),
                    ),
                    onTap: () {
                      print('Tapped "Cerrar sesion"');
                      Navigator.push(context, MaterialPageRoute(builder: (context) => login_page()));
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      );
  }
}
