import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login', style: GoogleFonts.robotoSlab()),
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
      ),
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50)),
            Align(
              alignment: Alignment.topCenter,
              heightFactor:1,
              child: Image.asset(
                "assets/images/high_table.jpg",
                height: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: 
                Text(
                  'Bienvenido Agente',
                  style: GoogleFonts.robotoSlab(),
                  textScaler: TextScaler.linear(2),
                ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Expanded( flex: 0,
              child: SizedBox(
              width: 300,
              child: 
                TextField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                ),
            ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Expanded( flex: 0,
              child: SizedBox(
              width: 300,
              child: 
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                  ),
                ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 0, 0, 1)),
              foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 248, 248, 248)),
              ),
            onPressed: () {},
            child: 
              Text('Ingresar')
            ),
          ],
        )
      ),
    );
  }
}