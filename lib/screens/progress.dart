import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meubmg/bmg_fonts_icons.dart';
import 'package:meubmg/screens/goals.dart';
import 'package:meubmg/screens/homepage.dart';
import 'package:meubmg/screens/learning.dart';
import 'package:meubmg/screens/login.dart';
import 'package:meubmg/screens/news.dart';
import 'authentication/firebase-auth.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final AuthService _auth = AuthService();
  dynamic seriesList = _getTransactions();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch(index){
      case 0:
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
                                  new charts.BarChart( this.seriesList, ),
                              )
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
                                  Center(child: Text("Saldo no fim da semana",
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

  static List<charts.Series<OrdinalSales, String>> _getTransactions() {
    final data = [
      new OrdinalSales('8/5', 8),
      new OrdinalSales('15/5', 25),
      new OrdinalSales('22/4', 93),
      new OrdinalSales('29/5', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
