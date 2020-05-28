import 'package:flutter/material.dart';
import 'package:meubmg/screens/login.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          backgroundColor: const Color(0xffffffff),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                // Adobe XD layer: 'Barra superior' (shape)
                Container(
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
          ),
        )
    );
  }
}
