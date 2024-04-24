import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPage extends StatelessWidget {
const ServicesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: Text(
          'Servicios',
          style: GoogleFonts.robotoSlab(),
        ),
        toolbarOpacity: 1,
        centerTitle: true,
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}