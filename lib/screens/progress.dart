import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meubmg/bmg_fonts_icons.dart';
import 'package:meubmg/screens/homepage.dart';
import 'package:meubmg/screens/login.dart';
import 'authentication/firebase-auth.dart';

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final AuthService _auth = AuthService();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                  title: Text("")
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
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
                IconButton( // TODO: replace with drawer (side menu)
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
