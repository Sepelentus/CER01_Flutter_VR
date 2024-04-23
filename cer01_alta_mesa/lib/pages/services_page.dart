import 'package:flutter/material.dart';

class ContractPage extends StatelessWidget {
const ContractPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: Container(
        clipBehavior: Clip.antiAlias,
        child: Text('Test servicios'),
      ),
    );
  }
}