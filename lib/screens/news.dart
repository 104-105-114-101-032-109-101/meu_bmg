import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meubmg/bmg_fonts_icons.dart';
import 'package:meubmg/screens/goals.dart';
import 'package:meubmg/screens/homepage.dart';
import 'package:meubmg/screens/learning.dart';
import 'package:meubmg/screens/login.dart';
import 'package:meubmg/screens/progress.dart';
import 'authentication/firebase-auth.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final AuthService _auth = AuthService();
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch(index){
      case 0:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => Progress()));
        break;
      case 1:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => Goals()));
        break;
      case 2:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => PginaInicial1()));
        break;
      case 3:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => Learning()));
        break;
      case 4:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          key: _drawerKey,
          backgroundColor: const Color(0xffffffff),
          drawer:
          Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 38.0,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: const Color(0xffff8f00)),
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.all(0.0),
                    child: Center( child: Text( 'Configurações', textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 20),),),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Página inicial'),
                  onTap: () {
                    Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => PginaInicial1()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.subject),
                  title: Text('Sobre o app'),
                  onTap: () {
                    Fluttertoast.showToast(msg: 'Protótipo hackathon BMG', toastLength: Toast.LENGTH_SHORT);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Sair'),
                  onTap: () async {
                    await _auth.signOut();
                    Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => Authenticate()));
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar:
          new Theme(
            data: Theme.of(context).copyWith(
                canvasColor: const Color(0xffff8f00),
                textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.white))
            ),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(BmgFonts.statistics),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(BmgFonts.goals),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.radio_button_checked),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                    icon: Icon(BmgFonts.book_edu),
                    title: Text("")
                ),
                BottomNavigationBarItem(
                  icon: Icon(BmgFonts.newspaper),
                  title: Text(""),
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              onTap: _onItemTapped,
            ),
          ),
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
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 38),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.all(12),
                          children: <Widget>[
                            SizedBox(height: 22),
                            Container(
                              width: 290.0,
                              height: 170.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0xffffffff),
                                border:
                                Border.all(width: 1.0, color: const Color(0xffff8f00)),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 6),
                                      blurRadius: 6)
                                ],
                              ),
                              child:
                              Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: SizedBox(
                                        width: 194.0,
                                        height: 101.0,
                                        child: Text(
                                          'Governo reduz em 0,5% a taxa Selic.',
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 20,
                                            color: const Color(0xff8b8b8b),
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 65,
                                      left: 10,
                                      child: Text(
                                        'valor.globo.com',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 15,
                                          color: const Color(0xff8b8b8b),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 10,
                                      child:
                                      Container(
                                        width: 25.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.elliptical(12.5, 12.5)),
                                          image: DecorationImage(
                                            image: const AssetImage('assets/images/j celius.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 18,
                                      right: 15,
                                      child:
                                      Container(
                                        width: 120.0,
                                        height: 82.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage('assets/images/bacen.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 40,
                                      left: 40,
                                      child:
                                      // Adobe XD layer: 'Nome 3 txt.' (text)
                                      SizedBox(
                                        width: 98.0,
                                        height: 15.0,
                                        child: Text(
                                          'João Celius',
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 15,
                                            color: const Color(0xff000000),
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 40,
                                      child: Text(
                                        'Má notícia para quem investe em renda fixa.\nMenos rendimentos para o Tesouro direto.',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                          color: const Color(0xff8b8b8b),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(height: 22),
                            Container(
                              width: 290.0,
                              height: 170.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0xffffffff),
                                border:
                                Border.all(width: 1.0, color: const Color(0xffff8f00)),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 6),
                                      blurRadius: 6)
                                ],
                              ),
                              child:
                              Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: SizedBox(
                                        width: 194.0,
                                        height: 101.0,
                                        child: Text(
                                          'Mercado prevê alta no agronegócio.',
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 20,
                                            color: const Color(0xff8b8b8b),
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 65,
                                      left: 10,
                                      child: Text(
                                        'exame.com',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 15,
                                          color: const Color(0xff8b8b8b),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 10,
                                      child:
                                      Container(
                                        width: 25.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.elliptical(12.5, 12.5)),
                                          image: DecorationImage(
                                            image: const AssetImage('assets/images/r vizza.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 18,
                                      right: 15,
                                      child:
                                      Container(
                                        width: 120.0,
                                        height: 82.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage('assets/images/ind.jpg'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 40,
                                      left: 40,
                                      child:
                                      // Adobe XD layer: 'Nome 3 txt.' (text)
                                      SizedBox(
                                        width: 98.0,
                                        height: 15.0,
                                        child: Text(
                                          'Renata Vieira',
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 15,
                                            color: const Color(0xff000000),
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 60,
                                      child: Text(
                                        'Sinal verde para o investimento no setor.\nExpectativa de alta consistente.',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                          color: const Color(0xff8b8b8b),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ]),
                            ),
                            SizedBox(height: 22),
                            Container(
                              width: 290.0,
                              height: 170.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0xffffffff),
                                border:
                                Border.all(width: 1.0, color: const Color(0xffff8f00)),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 6),
                                      blurRadius: 6)
                                ],
                              ),
                              child:
                              Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: SizedBox(
                                        width: 194.0,
                                        height: 101.0,
                                        child: Text(
                                          'Educação financeira e o impacto no seu bolso.',
                                          style: TextStyle(
                                            fontFamily: 'Ubuntu',
                                            fontSize: 20,
                                            color: const Color(0xff8b8b8b),
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 65,
                                      left: 10,
                                      child: Text(
                                        'infomoney.com.br',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 15,
                                          color: const Color(0xff8b8b8b),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 10,
                                      child:
                                      Container(
                                        width: 25.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.elliptical(12.5, 12.5)),
                                          image: DecorationImage(
                                            image: const AssetImage('assets/images/m mares.png'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 18,
                                      right: 15,
                                      child:
                                      Container(
                                        width: 200.0,
                                        height: 82.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: const AssetImage('assets/images/mao grana.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 40,
                                      left: 40,
                                      child:
                                      // Adobe XD layer: 'Nome 3 txt.' (text)
                                      SizedBox(
                                        width: 98.0,
                                        height: 15.0,
                                          child: Text(
                                            'Marcos Mares',
                                            style: TextStyle(
                                              fontFamily: 'Ubuntu',
                                              fontSize: 15,
                                              color: const Color(0xff000000),
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 5,
                                      left: 40,
                                      child: Text(
                                        'Excelentes dicas para o investidor iniciante.\nRenda fixa é segurança.',
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontStyle: FontStyle.italic,
                                          fontSize: 15,
                                          color: const Color(0xff8b8b8b),
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              Transform.translate(
                offset: Offset(-8.0, -8.0),
                child:
                IconButton(
                  icon: Icon(Icons.apps),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () { _drawerKey.currentState.openDrawer(); },
                ),
              ),],
            ),
          ),
        )
    );
  }
}
