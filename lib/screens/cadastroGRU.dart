import 'package:flutter/material.dart';

class CadastroGRU extends StatefulWidget {
  @override
  _CadastroGRUState createState() => _CadastroGRUState();
}

class _CadastroGRUState extends State<CadastroGRU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 400,
              width: double.infinity,
              child: Center(child: Icon(Icons.add_a_photo, color: Colors.white, size: 200,)),
            ),
            Divider(color: Colors.white,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.subtitles, color: Colors.grey),
                    hintText: "Insira o código de barras",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
            ),
            Divider(color: Colors.white,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    icon: Icon(Icons.attach_money, color: Colors.grey),
                    hintText: "Insira o valor",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
