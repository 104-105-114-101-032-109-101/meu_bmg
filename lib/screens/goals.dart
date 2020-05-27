import 'package:flutter/material.dart';
import 'package:meubmg/screens/login.dart';

class Goals extends StatefulWidget {
  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          backgroundColor: const Color(0xffffffff),
          body: Stack(
            children: <Widget>[
              // Adobe XD layer: 'Barra superior' (shape)
              /*Container(
                width: 360.0,
                height: 38.0,
                decoration: BoxDecoration(
                  color: const Color(0xffff8f00),
                ),
              ),
              Transform.translate(
                offset: Offset(143.0, 0.0),
                child:
                // Adobe XD layer: 'LOGO_BMG 2' (shape)
                Container(
                  width: 74.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/logo_bmg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(213.0, 2.0),
                child:
                // Adobe XD layer: '"+"' (text)
                SizedBox(
                  width: 14.0,
                  height: 14.0,
                  child: SingleChildScrollView(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 17,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      )),
                ),
              ), */
              Transform.translate(offset: Offset(100.0, 5.0), child:
                FlatButton(
                  onPressed: () { print("CUCUCUCU"); },
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.blueAccent,
                  child: Text(
                    'Acompanhamento',
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 11,
                      color: const Color(0xffff8f00),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(7.0, 7.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                new GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Authenticate()),
                    );
                  },
                  child: new Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1.0),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(16.0, 7.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(25.0, 7.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(25.0, 16.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(16.0, 16.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(7.0, 16.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(7.0, 25.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(16.0, 25.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(25.0, 25.0),
                child:
                // Adobe XD layer: 'Quadrado acesso men…' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
