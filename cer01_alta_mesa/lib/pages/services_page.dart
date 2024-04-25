import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({ Key? key }) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    List<String> category = [
      "Limpieza",
      "Armamento",
      "Vestimenta",
      "Cartografia"
    ];
    int? selectedIndex;
    List<Color> color = [
        Color.fromARGB(95, 165, 24, 9),
        Color.fromARGB(73, 187, 95, 3),
        Color.fromARGB(92, 2, 20, 101),
        Color.fromARGB(73, 76, 84, 17),
      ];
      List<Color> textColor = [
        Colors.white,
        Colors.white,
        Colors.white,
        Colors.white,
      ];
    List<dynamic> dataList = [
      {
        "title": "Limpieza de evidencia",
        "items": [
          "Nombre clave: Charlie",
          "Ubicacion: Villa Alemana",
          "Precio: 10M - 25M",
        ],
      },
      {
        "title": "Armamento y municion",
        "items": [
          "Nombre clave: Sommelier",
          "Ubicacion: Viña del Mar",
          "Precios: Variable",
        ],
      },
      {
        "title": "Vestimenta y armadura",
        "items": [
          "Nombre clave: Seamstress",
          "Ubicacion: Valparaiso",
          "Precios: Variable",
        ],
      },
      {
        "title": "Cartografia",
        "items": [
          "Nombre clave: Cartographer",
          "Ubicacion: Valparaiso",
          "Precios: 5M - 10M",
        ],
      },
    ];

    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text(
          'Servicios',
          style: GoogleFonts.robotoSlab(),
        ),
        toolbarOpacity: 1,
        centerTitle: true,
        elevation: 0,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ...category.map(
                  (index) => Expanded(
                    flex: selectedIndex == category.indexOf(index) ?0
                        : 1,
                    child: GestureDetector(
                      onTap: () {
                        print(dataList[category.indexOf(index)]["items"]
                            .toString());
                        print(index);
                        print(category.indexOf(index));
                        print("tap");
                        setState(() {
                          selectedIndex = category.indexOf(index);
                        });
                      },
                      child: Container(
                        color: color[category.indexOf(index)],
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                index.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: textColor[category.indexOf(index)]),
                              ),
                              selectedIndex == category.indexOf(index)
                                  ? Column(
                                      children: [
                                        ...dataList[category.indexOf(index)]
                                                ["items"]
                                            .map(
                                          (e) => Text(e),
                                        ),
                                        // ListTile(title:Text(dataList[category.indexOf(index)]["items"].toString()))
                                      ],
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}