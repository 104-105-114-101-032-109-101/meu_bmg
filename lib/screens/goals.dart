import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meubmg/bmg_fonts_icons.dart';
import 'package:meubmg/screens/homepage.dart';
import 'package:meubmg/screens/learning.dart';
import 'package:meubmg/screens/login.dart';
import 'package:meubmg/screens/news.dart';
import 'package:meubmg/screens/progress.dart';
import 'authentication/firebase-auth.dart';

class Goals extends StatefulWidget {
  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final AuthService _auth = AuthService();
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch(index){
      case 0:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => Progress()));
        break;
      case 1:
        break;
      case 2:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => PginaInicial1()));
        break;
      case 3:
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => Learning()));
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
                            GestureDetector(
                              onTap: (){
                                Fluttertoast.showToast(msg: 'Função não implementada', toastLength: Toast.LENGTH_SHORT);},
                              child: Container(
                              width: 290.0,
                              height: 163.0,
                              child:
                                Center(child: Text("Poupe R\$10,00 ao dia na categoria \"Restaurante\"",
                                style: TextStyle(
                                  fontFamily: 'Ubuntu',
                                  fontSize: 25,
                                  color: Colors.white,
                                ),textAlign: TextAlign.center,),),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    stops: [
                                      0.1,
                                      0.4,
                                      0.75,
                                      0.9
                                    ],
                                    colors: [
                                      Colors.deepOrange,
                                      Colors.deepOrangeAccent,
                                      Colors.orange,
                                      Colors.orangeAccent
                                    ]),
                                border:
                                Border.all(width: 1.0, color: Colors.black12),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 6),
                                      blurRadius: 6)
                                ],
                              ),
                            ),
                            ),
                            SizedBox(height: 22),
                            GestureDetector(
                                onTap: (){
                                  Fluttertoast.showToast(msg: 'Função não implementada', toastLength: Toast.LENGTH_SHORT);},
                                child:
                                Container(
                              width: 290.0,
                              height: 163.0,
                              child:
                              Center(child: Text("Termine o mês com saldo devedor abaixo de R\$600,00",
                                style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 25,
                                color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0xffffffff),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomRight,
                                    stops: [
                                      0.1,
                                      0.5,
                                      0.8,
                                    ],
                                    colors: [
                                      Colors.redAccent,
                                      Colors.deepOrange,
                                      Colors.deepOrangeAccent,
                                    ]),
                                border:
                                  Border.all(width: 1.0, color: Colors.black12),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 6),
                                      blurRadius: 6)
                                ],
                              ),
                            )),
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
