import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurante_universitario/screens/homePage.dart';
import 'package:restaurante_universitario/widgets/formaCard.dart';
import 'package:restaurante_universitario/screens/cadastro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Restaurante Universitário", style: TextStyle(color: Colors.white),),
      //   backgroundColor: Colors.red,
      // ),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 130,
                  child: Image.asset(
                    "images/arte.png", fit: BoxFit.cover
                  )
                ),
              )
            ],
          ),
          SizedBox(height: ScreenUtil.getInstance().setHeight(180),),
          FormCard(),
          SizedBox(height: ScreenUtil.getInstance().setHeight(40),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
            child: Container(
              width: ScreenUtil.getInstance().setWidth(330),
              height: ScreenUtil.getInstance().setHeight(100),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Cadastro()
                    ));
                  },
                  child: Center(
                    child: Text("Registre-se", style: TextStyle(color: Colors.white,
                    fontFamily: "Poppins-Bold",
                    fontSize: 10.0,
                    letterSpacing: 1.0
                    )),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20,),
          InkWell(
            child: Container(
              width: ScreenUtil.getInstance().setWidth(330),
              height: ScreenUtil.getInstance().setHeight(100),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePageon()
                    ));
                  },
                  child: Center(
                    child: Text("Login", style: TextStyle(color: Colors.white,
                    fontFamily: "Poppins-Bold",
                    fontSize: 10.0,
                    letterSpacing: 1.0
                    )),
                  ),
                ),
              ),
            ),
          )
            ],
          )
        ],
      ),

    );
  }
}