
import 'package:flutter/material.dart';

class DialogPopup extends StatelessWidget {
  final String title;
  final String title2;
  final String desc1;
  final String desc2;
  final String desc3;
  final Color color;

  @override
  DialogPopup({
    required this.title,
    required this.title2,
    required this.desc1,
    required this.desc2,
    required this.desc3,
    required this.color,
  });
  Widget build(BuildContext context) {
    print('DialogPopup');
    var screenSize = MediaQuery.of(context).size;
    return TextButton(
      onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text(this.title),
                content:
                    Text('${this.desc1}\n${this.desc2}\n${this.desc3}'),
                backgroundColor: const Color(0xFFEFEFEF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                actions: <Widget>[
                  TextButton(
                    child: Text('Cerrar'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              )),
      child: Container(
        color: this.color,
        width: screenSize.width,
        height: screenSize.height * 0.20,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title2.toUpperCase(),
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
