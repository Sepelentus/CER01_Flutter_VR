import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        title: Text('Editar perfil', style: GoogleFonts.robotoSlab(),),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: screenSize.height * 0.4),
                child: Container(
                  width: screenSize.width * 0.55,
                  height: screenSize.height * 0.25,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/johnwick.jpg"),
                      fit: BoxFit.fitHeight
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: screenSize.height * 0.09),
                child: Container(
                  child: 
                    Text('Aprete la foto de perfil para cambiarla', style: GoogleFonts.robotoSlab(), textScaler: TextScaler.linear(1)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.10),
                child: Container(
                  child: 
                    Text('Edite su nombre de usuario', style: GoogleFonts.robotoSlab(), textScaler: TextScaler.linear(1)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.23),
                child: SizedBox(
                  width: screenSize.width * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Usuario',
                      contentPadding: EdgeInsets.all(8),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                    ),
                    maxLength: 12,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.35),
                child: Container(
                  child: 
                    Text('Enviar correo de cambio de clave', style: GoogleFonts.robotoSlab(), textScaler: TextScaler.linear(1)),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: screenSize.height * 0.175),
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
                          title: Text('Enviar correo', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Roboto Slab',
                                  fontWeight: FontWeight.w400,
                                  height: 0,

                                ),),
                          leading: Icon(Icons.email_outlined),
                          iconColor: Colors.white,
                        )
                      ],
                    ),
                    ),
                    onTap: () {
                      print('Enviado correo :)');
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enviado correo con exito')));
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}