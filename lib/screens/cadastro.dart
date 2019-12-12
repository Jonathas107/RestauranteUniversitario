import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastro de úsuario',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
        onPressed: () {
          if(_formKey.currentState.validate()){
            Navigator.of(context).pop();
          }
          
        },
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Icon(
              Icons.person_add,
              size: 200,
            ),
            Divider(color: Colors.white),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "Nome"),
              validator: (text) {
                if (text.isEmpty) {
                  return "Por favor, preencha o campo.";
                } else {
                  return null;
                }
              },
            ),
            Divider(color: Colors.white),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "Cidade"),
              validator: (text) {
                if (text.isEmpty) {
                  return "Por favor, preencha o campo.";
                } else {
                  return null;
                }
              },
            ),
            Divider(color: Colors.white),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "Estado"),
              validator: (text) {
                if (text.isEmpty) {
                  return "Por favor, preencha o campo.";
                } else {
                  return null;
                }
              },
            ),
            Divider(color: Colors.white),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "Campus"),
              validator: (text) {
                if (text.isEmpty) {
                  return "Por favor, preencha o campo.";
                } else {
                  return null;
                }
              },
            ),
            Divider(color: Colors.white),
            Divider(color: Colors.white),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "Email"),
              validator: (text) {
                if (text.isEmpty || !text.contains('@')) {
                  return "Email Inválido!";
                } else {
                  return null;
                }
              },
            ),
            Divider(color: Colors.white),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: "Senha"),
              validator: (text) {
                if (text.isEmpty || text.length < 6) {
                  return "Senha Inválida!";
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
