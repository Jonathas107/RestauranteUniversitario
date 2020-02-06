import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TransacaoFicha extends StatelessWidget {
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
              child: Center(child: Container(color: Colors.white, height: 200,width: 200,child: QrImage(
                data: "Id do usuario",
              ))),
              
              //Center(child: Container(color: Colors.white, height: 200,width: 200,child: Center( child: Text("QR code", style: TextStyle(color: Colors.black, fontSize: 20),),))),
            ),
            Divider(color: Colors.white,),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              color: Colors.red,
              child: Text("Transação realizada com sucesso!",style: TextStyle(color: Colors.white,)),
            )
          ],
        ),
      ),
    );
  }
}