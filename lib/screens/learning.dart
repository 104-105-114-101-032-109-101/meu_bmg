import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meubmg/bmg_fonts_icons.dart';
import 'package:meubmg/screens/goals.dart';
import 'package:meubmg/screens/homepage.dart';
import 'package:meubmg/screens/login.dart';
import 'package:meubmg/screens/news.dart';
import 'package:meubmg/screens/progress.dart';
import 'package:meubmg/screens/questions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'authentication/firebase-auth.dart';

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final AuthService _auth = AuthService();
  int _selectedIndex = 3;

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
        break;
      case 4:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => News()));
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
              Transform.translate(
                offset: Offset(-8.0, -8.0),
                child:
                IconButton(
                  icon: Icon(Icons.apps),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () { _drawerKey.currentState.openDrawer(); },
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
                              height: 163.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0xffffffff),
                                border:
                                Border.all(width: 1.0, color: Colors.black12),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 6),
                                      blurRadius: 6)
                                ],
                              ),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () async {
                                    const url = 'https://www.youtube.com/watch?v=gW-pPjI7Qqc';
                                    if (await canLaunch(url)) { await launch(url); }
                                    else { throw 'Could not launch $url'; }
                                  },
                                  child: Icon(Icons.play_circle_outline, size: 70, color: const Color(0xffff8f00))
                                ),
                              )
                            ),
                            SizedBox(height: 22),
                            Container(
                              width: 290.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0xffffffff),
                                border:
                                Border.all(width: 1.0, color: const Color(0x29000000)),
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
                                    child: Text(
                                      'Perfil: Investidor',
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontSize: 30,
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Positioned(
                                    top: 65,
                                    left: 12,
                                    child: Text(
                                      'Neste vídeo, você vai aprender mais sobre\ninvestimentos com maiores rendimentos\ne fator de risco.\n\n\n\nDiscutiremos como exemplos:\n    -Ações;\n    -Imóveis;\n    -Títulos de Renda Fixa.',
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontSize: 15,
                                        color: const Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                   ),
                                ]),
                            ),
                            SizedBox(height: 22),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.black12)
                              ),
                              onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Questions()));
                              },
                              color: const Color(0xffff6f00),
                              textColor: Colors.white,
                              child: Text("Continuar".toUpperCase(), style: TextStyle(fontSize: 14)),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
