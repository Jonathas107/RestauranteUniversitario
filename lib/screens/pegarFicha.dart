import 'package:flutter/material.dart';
import 'package:restaurante_universitario/screens/transacaoFicha.dart';

class PegarFicha extends StatefulWidget {
  @override
  _PegarFichaState createState() => _PegarFichaState();
}

class _PegarFichaState extends State<PegarFicha> {
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
              height: 300,
              width: double.infinity,
              child: Center(child: Text("Crédito: R\$200,00",style: TextStyle(color: Colors.white, fontSize: 20),)),
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$3,00"),
              subtitle: Text("Estudante de graduação"),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TransacaoFicha()
                ));
              },
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$5,00"),
              subtitle: Text("Estudante de pós-graduação"),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TransacaoFicha()
                ));
              },
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$8,00"),
              subtitle: Text("Servidor da Universidade"),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TransacaoFicha()
                ));
              },
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$3,00"),
              subtitle: Text("Jantar"),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TransacaoFicha()
                ));
              },
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$1,00"),
              subtitle: Text("sopas, bolos doces e tortas salgadas"),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red,),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => TransacaoFicha()
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}