import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String nombre_servicio;
  final String descripcion1;
  final String descripcion2;
  final double top;
  final double width;
  MenuCard({
    required this.width,
    required this.top,
    required this.nombre_servicio,
    required this.descripcion1,
    required this.descripcion2
    });

  Widget build(BuildContext context) {
    return
        // Caja donde esta el texto encima
        Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: this.top),
            child: Container(
              width: this.width,
              height: 103,
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
                    left: 14,
                    top: 12,
                    child: SizedBox(
                      width: 200,
                      height: 21,
                      child: Text(
                        '${this.nombre_servicio}',
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
                  Positioned(
                    left: 14,
                    top: 38,
                    child: SizedBox(
                      width: 196,
                      height: 16,
                      child: Text(
                        '${this.descripcion1}',
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
                    top: 54,
                    child: SizedBox(
                      width: 200,
                      height: 16,
                      child: Text(
                        '${this.descripcion2}',
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
                    top: 70,
                    child: SizedBox(
                      width: 192,
                      height: 20,
                      child: Text(
                        'Ingrese para ver mas detalles',
                        style: TextStyle(
                          color: Color.fromARGB(255, 242, 34, 34),
                          fontSize: 12,
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
          ),
        ),
      ],
    );
  }
}
