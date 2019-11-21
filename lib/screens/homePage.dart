import 'package:flutter/material.dart';
import 'package:restaurante_universitario/screens/cadastro.dart';
import 'package:restaurante_universitario/screens/cadastroGRU.dart';
import 'package:restaurante_universitario/screens/home.dart';

class HomePageon extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Restaurante Universitário",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CadastroGRU()));
        },
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Jonathas Tiago",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail:
                Text("Sem Bolsa", style: TextStyle(color: Colors.white)),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, color: Colors.grey, size: 42),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          ListTile(title: Text("Perfil"), onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Cadastro()
            ));
          },),
          ListTile(title: Text("Transações"), onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePageon()
            ));
          },),
          ListTile(title: Text("Cadastrar GRU"), onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CadastroGRU()
            ));
          },),
          SizedBox(
            height: 50,
          ),
          ListTile(title: Text("Sair"), onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage()
            ));
          },)
        ],
      )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$15,00"),
              subtitle: Text("Transação realizada em 21/11/2019"),
            ),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$21,00"),
              subtitle: Text("Transação realizada em 21/11/2019"),
            ),
            ListTile(
              leading: Icon(
                Icons.attach_money,
                color: Colors.green,
              ),
              title: Text("R\$30,00"),
              subtitle: Text("Transação realizada em 21/11/2019"),
            ),
          ],
        ),
      ),
    );
  }
}
