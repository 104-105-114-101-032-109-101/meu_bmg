import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:meubmg/screens/homepage.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0.0, 0.0),
              child:
              // Adobe XD layer: 'carousel' (shape)
              Container(
                width: 900.0,
                height: 640.0,
                child: Carousel(
                  images: [
                    ExactAssetImage('assets/images/login-back-2.jpg'),
                    //ExactAssetImage('assets/images/login-back-3.jpg'),
                  ],
                  //autoplay: true,
                  //autoplayDuration: Duration(milliseconds: 3800),
                  //animationCurve: Curves.ease,
                  //animationDuration: Duration(milliseconds: 300),
                  showIndicator: false,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(56.0, 440.0),
              child:
              // Adobe XD layer: 'Botao acesso 1' (shape)
              new GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PginaInicial1()),
                    );
                  },
                  child: new Container(
                    width: 250.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color(0xfffca33c),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0x66000000),
                            offset: Offset(2, 8),
                            blurRadius: 11)
                      ],
                    ),
                  )
              ),
            ),
            Transform.translate(
              offset: Offset(56.0, 500.0),
              child:
              // Adobe XD layer: 'Botao acesso 2' (shape)
              new GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PginaInicial1()),
                    );
                  },
                  child: new Container(
                width: 250.0,
                height: 43.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                        color: const Color(0x66000000),
                        offset: Offset(2, 8),
                        blurRadius: 11)
                  ],
                ),
              )),
            ),
            Transform.translate(
              offset: Offset(123.0, 452.0),
              child:
              // Adobe XD layer: '"Seja um cliente"' (text)
              new GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PginaInicial1()),
                  );
                },
                child: new SizedBox(
                width: 117.0,
                height: 17.0,
                child: SingleChildScrollView(
                    child: Text(
                      'Seja um cliente',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 17,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    )),
              ),),
            ),
            Transform.translate(
              offset: Offset(152.0, 511.0),
              child:
              // Adobe XD layer: '"Entrar"' (text)
              SizedBox(
                width: 52.0,
                height: 17.0,
                child: SingleChildScrollView(
                  child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PginaInicial1()),
                      );
                    },
                    child: new Text(
                      'Entrar',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 17,
                        color: const Color(0xfffca33c),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
            ),
            // Adobe XD layer: 'LOGO_BMG 2' (shape)
            Container(
              width: 187.0,
              height: 91.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo_bmg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(8.0, 69.0),
              child:
              // Adobe XD layer: 'Texto extra' (text)
              SizedBox(
                width: 124.0,
                height: 85.0,
                child: SingleChildScrollView(
                    child: Text(
                      'poupe_ economize_\ninvista_',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 22,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    )),
              ),
            ),
          ],
        ),
      )
    );
  }
}

    
    