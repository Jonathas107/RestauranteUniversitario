import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: ScreenUtil.getInstance().setHeight(500),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 15.0),
                  blurRadius: 15.0,
                ),
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, -10.0),
                  blurRadius: 10.0,
                )
              ]),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Login", style: TextStyle(fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-bold", letterSpacing: 0.6
                    )),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(30),
                    ),
                    Text("Nome", style: TextStyle(
                      fontFamily: "Poppins-medium",
                      fontSize: ScreenUtil.getInstance().setSp(26)
                    ),),
                    TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person, color: Colors.grey),
                        hintText: "Insira seu nome",
                        hintStyle: TextStyle(
                          color: Colors.grey, fontSize: 12.0
                        )
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().setHeight(30),
                    ),
                    Text("Senha", style: TextStyle(
                      fontFamily: "Poppins-medium",
                      fontSize: ScreenUtil.getInstance().setSp(26)
                    ),),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.vpn_key, color: Colors.grey,),
                        hintText: "Insira sua senha",
                        hintStyle: TextStyle(
                          color: Colors.grey, fontSize: 12.0
                        )
                      ),
                    ),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(35),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text("Esqueceu a senha?", style: TextStyle(
                          color: Colors.red, fontFamily: "Poppins-medium",
                          fontSize: ScreenUtil.getInstance().setSp(28)
                        ),)
                      ],
                    )
                  ],
                ),
              ),

          );
  }
}