import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meubmg/screens/goals.dart';
import 'package:meubmg/screens/learning.dart';
import 'package:meubmg/screens/news.dart';
import 'package:meubmg/screens/progress.dart';
import 'package:meubmg/screens/authentication/firebase-auth.dart';
import 'login.dart';

class PginaInicial1 extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final AuthService _auth = AuthService();
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
              offset: Offset(80.0, 325.0),
              child:
              // Adobe XD layer: 'Acompanhamentos' (shape)
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Progress()),
                  );
                },
                child: new Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xffff8f00),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(205.0, 325.0),
              child:
              // Adobe XD layer: 'Metas' (shape)
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Goals()),
                  );
                },
                child: new Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xffff8f00),
                    border: Border.all(width: 1.0, color: const Color(0xffff8f00)),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(205.0, 440.0),
              child:
              // Adobe XD layer: 'Noticias' (shape)
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => News()),
                  );
                },
                child: new Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xffff8f00),
                    border: Border.all(width: 1.0, color: const Color(0xffff8f00)),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(80.0, 440.0),
              child:
              // Adobe XD layer: 'Aprendizado' (shape)
              new GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Learning()),
                  );
                },
                child: new Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xffff8f00),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(50.0, 81.0),
              child:
              // Adobe XD layer: 'Campo infos princip…' (shape)
              Container(
                width: 269.0,
                height: 142.0,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border: Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(71.0, 250.0),
              child:
              // Adobe XD layer: 'Campo saldo' (shape)
              Container(
                width: 218.0,
                height: 53.0,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  border: Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(160.0, 232.0),
              child:
              // Adobe XD layer: 'Bola loc' (shape)
              Container(
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
                  color: const Color(0xffff8f00),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(192.0, 232.0),
              child:
              // Adobe XD layer: 'Bola loc' (shape)
              Container(
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
                  color: const Color(0xffd9d9d9),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(176.0, 232.0),
              child:
              // Adobe XD layer: 'Bola loc' (shape)
              Container(
                width: 8.0,
                height: 8.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(4.0, 4.0)),
                  color: const Color(0xffd9d9d9),
                ),
              ),
            ),
            // Allow me to click trough the svg
            IgnorePointer(
              ignoring: false,
              child: Transform.translate(
                offset: Offset(95.0, 401.0),
                child:
                // Adobe XD layer: 'quality' (group)
                SvgPicture.string(
                  _shapeSVG_4819c733c5344a86ae3565465bec2f09,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(71.0, 405.0),
              child:
              // Adobe XD layer: 'Acompanhamento txt.' (text)
              SizedBox(
                width: 95.0,
                height: 16.0,
                child: SingleChildScrollView(
                    child: Text(
                      'Acompanhamento',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 11,
                        color: const Color(0xffff8f00),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    )),
              ),
            ),
            Transform.translate(
              offset: Offset(86.0, 519.0),
              child:
              // Adobe XD layer: 'Aprendizado txt.' (text)
              SizedBox(
                width: 69.0,
                height: 11.0,
                child: SingleChildScrollView(
                    child: Text(
                      'Aprendizado',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 11,
                        color: const Color(0xffff8f00),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    )),
              ),
            ),
            Transform.translate(
              offset: Offset(222.0, 519.0),
              child:
              // Adobe XD layer: 'Noticias txt.' (text)
              SizedBox(
                width: 45.0,
                height: 11.0,
                child: SingleChildScrollView(
                    child: Text(
                      'Notícias',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 11,
                        color: const Color(0xffff8f00),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    )),
              ),
            ),
            Transform.translate(
              offset: Offset(225.0, 405.0),
              child:
              // Adobe XD layer: 'Metas txt.' (text)
              SizedBox(
                width: 35.0,
                height: 10.0,
                child: SingleChildScrollView(
                    child: Text(
                      'Metas',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 11,
                        color: const Color(0xffff8f00),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    )),
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
            ),],
          ),
        ),
      )
    );
  }
}

const String _shapeSVG_4819c733c5344a86ae3565465bec2f09 =
    '<svg viewBox="95.0 401.0 169.9 158.3" >'
    '<g transform="translate(200.11, 342.0)">'
    '<path transform="translate(0.0, 0.0)" d="M 59.21274566650391 15.16626262664795 L 55.95224761962891 11.79624366760254 L 56.6090202331543 7.154493808746338 C 56.70950317382813 6.444550037384033 56.22887802124023 5.782810688018799 55.52248382568359 5.659110546112061 L 50.90447998046875 4.849568367004395 L 48.70623779296875 0.7066919207572937 C 48.37023544311523 0.07348421961069107 47.59206008911133 -0.179231733083725 46.94839477539063 0.135688528418541 L 42.73693084716797 2.194278001785278 L 38.5244140625 0.1356884837150574 C 37.88021850585938 -0.179231733083725 37.10274505615234 0.07366142421960831 36.76656723022461 0.7070463299751282 L 34.56921005249023 4.849568367004395 L 29.95067977905273 5.659110069274902 C 29.24445724487305 5.782809734344482 28.76365661621094 6.444549560546875 28.86413955688477 7.154492855072021 L 29.52074432373047 11.79624271392822 L 26.26024627685547 15.16626262664795 C 25.76172637939453 15.68161773681641 25.76172637939453 16.49931335449219 26.26042175292969 17.01466751098633 L 29.52074432373047 20.38433265686035 L 28.86413955688477 25.028564453125 C 28.76383209228516 25.73833274841309 29.24445724487305 26.40007019042969 29.95067977905273 26.52376747131348 L 33.64695358276367 27.17168617248535 L 33.64695358276367 41.54655075073242 C 33.64695358276367 42.00714492797852 33.88549423217773 42.43495559692383 34.27732467651367 42.67703247070313 C 34.49070358276367 42.80906295776367 34.73313522338867 42.87570190429688 34.97610855102539 42.87570190429688 C 35.17919921875 42.87570190429688 35.38282775878906 42.82926940917969 35.57050704956055 42.7353401184082 L 42.73710632324219 39.15336608886719 L 49.90265274047852 42.7353401184082 C 50.31451416015625 42.94126892089844 50.80399703979492 42.91929626464844 51.19582748413086 42.67703247070313 C 51.5876579284668 42.43477630615234 51.82620239257813 42.00696563720703 51.82620239257813 41.54637145996094 L 51.82620239257813 27.17186546325684 L 55.52266311645508 26.52359199523926 C 56.22887802124023 26.39971542358398 56.70950317382813 25.7381534576416 56.60919189453125 25.0282096862793 L 55.95241546630859 20.38397789001465 L 59.21274566650391 17.01449012756348 C 59.71108245849609 16.49948692321777 59.71108245849609 15.68161773681641 59.21274566650391 15.16626262664795 Z M 43.33133316040039 36.4784049987793 C 42.9573974609375 36.29143905639648 42.51700592041016 36.291259765625 42.14271545410156 36.4784049987793 L 36.30525970458984 39.39616012573242 L 36.30525970458984 30.60515213012695 L 36.76674270629883 31.47512435913086 C 37.10275650024414 32.10868835449219 37.88109970092773 32.36122894287109 38.52476501464844 32.04612731933594 L 42.73711776733398 29.98612403869629 L 46.94821166992188 32.04612731933594 C 47.13606643676758 32.13793182373047 47.33526611328125 32.1815299987793 47.53144454956055 32.1815299987793 C 48.00817108154297 32.1815299987793 48.46823501586914 31.92385101318359 48.70641708374023 31.47530364990234 L 49.16790008544922 30.60604095458984 L 49.16790008544922 39.39616012573242 L 43.33133316040039 36.4784049987793 Z M 53.58989715576172 19.00272178649902 C 53.30475234985352 19.29743957519531 53.17165756225586 19.70717239379883 53.22907257080078 20.11318397521973 L 53.79671096801758 24.12739753723145 L 49.8055419921875 24.82724189758301 C 49.40183258056641 24.89795112609863 49.05324172973633 25.15120124816895 48.8609619140625 25.51325988769531 L 46.96098327636719 29.09310722351074 L 43.32104873657227 27.31257820129395 C 43.13674545288086 27.22254943847656 42.93684005737305 27.17735862731934 42.7369384765625 27.17735862731934 C 42.53702926635742 27.17735862731934 42.33713531494141 27.22237014770508 42.15299606323242 27.31257820129395 L 38.51218414306641 29.09310722351074 L 36.61291885375977 25.51343727111816 C 36.42080307006836 25.15119743347168 36.07221221923828 24.89794921875 35.66832733154297 24.82724189758301 L 31.67626953125 24.12739753723145 L 32.24372863769531 20.11300659179688 C 32.3011474609375 19.70717239379883 32.16805267333984 19.29726409912109 31.88290786743164 19.00272178649902 L 29.06493377685547 16.09028625488281 L 31.88308715820313 13.17749691009521 C 32.16805648803711 12.88277912139893 32.3011474609375 12.47304630279541 32.24372863769531 12.06721210479736 L 31.67626953125 8.055480003356934 L 35.66832733154297 7.355637073516846 C 36.07221221923828 7.284926891326904 36.42080688476563 7.031501770019531 36.61309051513672 6.669263362884521 L 38.51235961914063 3.088529586791992 L 42.15335083007813 4.867820739746094 C 42.52161026000977 5.047875881195068 42.95243835449219 5.047875881195068 43.32069396972656 4.867820739746094 L 46.96062088012695 3.088529348373413 L 48.8609619140625 6.669439792633057 C 49.05305862426758 7.031500339508057 49.40164947509766 7.284748077392578 49.80553436279297 7.355636119842529 L 53.79671096801758 8.055301666259766 L 53.22907257080078 12.0670337677002 C 53.17165756225586 12.47304534912109 53.30475234985352 12.88277816772461 53.5897216796875 13.17749500274658 L 56.40786743164063 16.09028434753418 L 53.58989715576172 19.00272178649902 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" />'
    '<path transform="translate(-36.03, -32.51)" d="M 78.76615142822266 39.50700378417969 C 73.75384521484375 39.50700378417969 69.67600250244141 43.58412933349609 69.67600250244141 48.59574127197266 C 69.67600250244141 53.60840606689453 73.75384521484375 57.68642044067383 78.76615142822266 57.68642044067383 C 83.77777099609375 57.68642044067383 87.85507202148438 53.60840606689453 87.85507202148438 48.59573364257813 C 87.85507202148438 43.58412933349609 83.77777099609375 39.50700378417969 78.76615142822266 39.50700378417969 Z M 78.76615142822266 55.02812194824219 C 75.21963500976563 55.02812194824219 72.33431243896484 52.14262008666992 72.33431243896484 48.59573364257813 C 72.33431243896484 45.0499153137207 75.21963500976563 42.16530609130859 78.76615142822266 42.16530609130859 C 82.31198120117188 42.16530609130859 85.19676971435547 45.0499153137207 85.19676971435547 48.59573364257813 C 85.19676971435547 52.14262008666992 82.31198120117188 55.02812194824219 78.76615142822266 55.02812194824219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-55.11, -57.24)" d="M 100.560661315918 69.95796966552734 L 96.63436126708984 73.88339996337891 L 95.14021301269531 72.39102172851563 C 94.62095642089844 71.87212371826172 93.77933502197266 71.87265777587891 93.26044464111328 72.39208984375 C 92.74171447753906 72.91152191162109 92.74224853515625 73.75296783447266 93.26167297363281 74.27169036865234 L 95.69544982910156 76.70279693603516 C 95.95489501953125 76.96206665039063 96.2947998046875 77.09161376953125 96.63471221923828 77.09161376953125 C 96.97480010986328 77.09161376953125 97.31505584716797 76.96189880371094 97.57451629638672 76.70243072509766 L 102.4400939941406 71.83792877197266 C 102.9593505859375 71.31902313232422 102.9593505859375 70.47740173339844 102.4402694702148 69.95815277099609 C 101.9213714599609 69.43906402587891 101.0797424316406 69.43888854980469 100.560661315918 69.95796966552734 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" />'
    '</g>'
    '<path transform="translate(82.36, 458.0)" d="M 51.20190048217773 -2.474917160100176e-08 L 32.12310028076172 -2.474917160100176e-08 L 26.93133354187012 -2.474917160100176e-08 L 24.33587646484375 -2.474917160100176e-08 C 21.19501304626465 0.0008532388601452112 18.63999938964844 2.556377649307251 18.63999938964844 5.6968994140625 L 18.63999938964844 34.50699996948242 C 18.63999938964844 37.64752197265625 21.1951847076416 40.20304870605469 24.33621788024902 40.20373153686523 L 51.20206832885742 40.20373153686523 C 51.90908813476563 40.20373153686523 52.48196411132813 39.63068008422852 52.48196411132813 38.9238395690918 L 52.48196411132813 30.08982849121094 L 52.48196411132813 10.11441516876221 L 52.48196411132813 1.279895424842834 C 52.48179626464844 0.5730518102645874 51.90891647338867 -2.474917160100176e-08 51.20190048217773 -2.474917160100176e-08 Z M 30.84320831298828 2.559790849685669 L 30.84320831298828 9.059612274169922 L 30.43210220336914 8.648338317871094 C 30.19216728210449 8.408229827880859 29.8665599822998 8.273414611816406 29.52696228027344 8.273414611816406 C 29.18736457824707 8.273414611816406 28.86175918579102 8.408401489257813 28.62165069580078 8.64850902557373 L 28.2110595703125 9.059269905090332 L 28.2110595703125 2.559790849685669 L 30.84320831298828 2.559790849685669 Z M 24.33621788024902 2.559790849685669 L 25.65143966674805 2.559790849685669 L 25.65143966674805 12.14944934844971 C 25.65143966674805 12.85629272460938 26.22534370422363 13.42934513092041 26.93235778808594 13.42934513092041 C 27.2719554901123 13.42934513092041 27.59756469726563 13.29452896118164 27.83767318725586 13.05425071716309 L 29.52730178833008 11.36376571655273 L 31.21744537353516 13.05442047119141 C 31.45738220214844 13.29452896118164 31.78299140930176 13.42934513092041 32.12258911132813 13.42934513092041 L 32.12326812744141 13.42934513092041 C 32.83028030395508 13.42934513092041 33.40316390991211 12.85629272460938 33.40316390991211 12.14944934844971 L 33.40316390991211 2.559790849685669 L 49.92218017578125 2.559790849685669 L 49.92218017578125 10.11441516876221 L 49.92218017578125 28.81010437011719 L 24.33587646484375 28.81010437011719 C 23.17782783508301 28.8104419708252 22.09981346130371 29.15892028808594 21.19979286193848 29.75517654418945 L 21.19979286193848 5.6968994140625 C 21.19979286193848 3.967675685882568 22.60699462890625 2.560302734375 24.33621788024902 2.559790849685669 Z M 24.3365592956543 37.64393997192383 C 22.6068229675293 37.64360046386719 21.19979286193848 36.23639678955078 21.19979286193848 34.50699996948242 C 21.19979286193848 32.77760696411133 22.60699462890625 31.37023544311523 24.33621788024902 31.36972236633301 L 49.92217636108398 31.36972236633301 L 49.92217636108398 33.22710800170898 L 24.33621788024902 33.22710800170898 C 23.62920379638672 33.22710800170898 23.05632400512695 33.8001594543457 23.05632400512695 34.50699996948242 C 23.05632400512695 35.21384429931641 23.62920379638672 35.78689956665039 24.33621788024902 35.78689956665039 L 49.92217636108398 35.78689956665039 L 49.92217636108398 37.64393997192383 L 24.3365592956543 37.64393997192383 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" />'
    '<path transform="translate(95.0, 327.0)" d="M 43.81737899780273 53.1440315246582 L 36.68450927734375 53.1440315246582 L 36.68450927734375 35.26203918457031 C 36.68450927734375 34.51424026489258 36.07858276367188 33.9083137512207 35.33078384399414 33.9083137512207 L 28.19087600708008 33.9083137512207 L 28.19087600708008 26.79854965209961 C 28.19087600708008 26.05075073242188 27.58495330810547 25.44482040405273 26.8371524810791 25.44482040405273 L 18.34279823303223 25.44482040405273 C 17.59499931335449 25.44482040405273 16.98907089233398 26.05075073242188 16.98907089233398 26.79854965209961 L 16.98907089233398 36.55801010131836 L 9.847358703613281 36.55801010131836 C 9.099560737609863 36.55801010131836 8.493633270263672 37.16393280029297 8.493633270263672 37.91172790527344 L 8.493633270263672 53.1440315246582 L 2.70745062828064 53.1440315246582 L 2.70745062828064 18.06972503662109 C 2.70745062828064 17.32192993164063 2.101342678070068 16.71599960327148 1.35372531414032 16.71599960327148 C 0.6059274077415466 16.71599960327148 0 17.32192993164063 0 18.06972503662109 L 0 54.49757766723633 C 0 55.24537658691406 0.6059274077415466 55.85130310058594 1.35372531414032 55.85130310058594 L 9.822812080383301 55.85130310058594 C 9.831113815307617 55.85148620605469 9.839056015014648 55.85255813598633 9.847358703613281 55.85255813598633 L 18.34171295166016 55.85255813598633 C 18.34207534790039 55.85255813598633 18.34207534790039 55.85255813598633 18.34243583679199 55.85255813598633 C 18.34279823303223 55.85255813598633 18.34279823303223 55.85255813598633 18.34316062927246 55.85255813598633 L 26.83751487731934 55.85255813598633 L 35.33114624023438 55.85255813598633 C 35.33944702148438 55.85255813598633 35.34738540649414 55.85148620605469 35.35569381713867 55.85130310058594 L 43.81774139404297 55.85130310058594 C 44.5655403137207 55.85130310058594 45.17146301269531 55.24537658691406 45.17146301269531 54.49757766723633 C 45.17110824584961 53.74996185302734 44.56499862670898 53.1440315246582 43.81737899780273 53.1440315246582 Z M 33.9770622253418 36.61557769775391 L 33.9770622253418 53.14384460449219 L 28.19087600708008 53.14384460449219 L 28.19087600708008 36.61557769775391 L 33.9770622253418 36.61557769775391 Z M 25.48360824584961 28.15227127075195 L 25.48360824584961 35.26203918457031 L 25.48360824584961 53.1440315246582 L 19.69670295715332 53.1440315246582 L 19.69670295715332 28.15227127075195 L 25.48360824584961 28.15227127075195 Z M 11.20108509063721 39.26545333862305 L 16.98798561096191 39.26545333862305 L 16.98798561096191 53.1440315246582 L 11.20108509063721 53.1440315246582 L 11.20108509063721 39.26545333862305 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" />'
    '<g transform="translate(221.0, 448.00)">'
    '<path transform="translate(0.0, 0.0)" d="M 42.56059265136719 15.98671722412109 L 37.84514999389648 15.98671722412109 L 37.84514999389648 11.56911659240723 C 37.84514999389648 10.83785247802734 37.25230026245117 10.2450008392334 36.52103424072266 10.2450008392334 L 1.324115037918091 10.2450008392334 C 0.592850387096405 10.2450008392334 1.164974561262966e-09 10.83785247802734 1.164974561262966e-09 11.56911659240723 L 1.164974561262966e-09 46.16823959350586 C 1.164974561262966e-09 48.5634765625 1.948744535446167 50.5122184753418 4.343980312347412 50.5122184753418 L 39.54054641723633 50.5122184753418 C 41.93578720092773 50.5122184753418 43.884521484375 48.5634765625 43.884521484375 46.16823959350586 L 43.884521484375 17.31083297729492 C 43.88470458984375 16.57956695556641 43.2918586730957 15.98671722412109 42.56059265136719 15.98671722412109 Z M 2.648230075836182 12.89323234558105 L 35.19692230224609 12.89323234558105 L 35.19692230224609 17.3106575012207 L 35.19692230224609 46.16823959350586 C 35.19692230224609 46.76956939697266 35.31979751586914 47.34281921386719 35.54171752929688 47.86399459838867 L 4.343980312347412 47.86399459838867 C 3.408978700637817 47.86399459838867 2.648230075836182 47.10324478149414 2.648230075836182 46.16823959350586 L 2.648230075836182 12.89323234558105 Z M 39.54072189331055 47.86399459838867 C 38.60589599609375 47.86399459838867 37.84514999389648 47.10324478149414 37.84514999389648 46.16823959350586 L 37.84514999389648 18.63494873046875 L 41.23646926879883 18.63494873046875 L 41.23646926879883 46.16823959350586 C 41.23647308349609 47.10324478149414 40.47572708129883 47.86399459838867 39.54072189331055 47.86399459838867 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" />'
    '<path transform="translate(-20.52, -26.12)" d="M 26.24611663818359 53.45855712890625 L 52.6436767578125 53.45855712890625 C 53.37494277954102 53.45855712890625 53.96778869628906 52.86570739746094 53.96778869628906 52.13444137573242 L 53.96778869628906 43.28511810302734 C 53.96778869628906 42.55385208129883 53.37494277954102 41.96100234985352 52.6436767578125 41.96100234985352 L 26.24611663818359 41.96100234985352 C 25.51485252380371 41.96100234985352 24.92200088500977 42.55385208129883 24.92200088500977 43.28511810302734 L 24.92200088500977 52.13444137573242 C 24.92200088500977 52.86570739746094 25.51485252380371 53.45855712890625 26.24611663818359 53.45855712890625 Z M 27.57023048400879 44.60923004150391 L 51.31955718994141 44.60923004150391 L 51.31955718994141 50.81032943725586 L 27.57023048400879 50.81032943725586 L 27.57023048400879 44.60923004150391 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-20.52, -94.79)" d="M 26.24611663818359 139.5381622314453 L 37.77615737915039 139.5381622314453 C 38.50742340087891 139.5381622314453 39.10027313232422 138.9452972412109 39.10027313232422 138.2140350341797 L 39.10027313232422 126.68310546875 C 39.10027313232422 125.9518432617188 38.50742340087891 125.3590087890625 37.77615737915039 125.3590087890625 L 26.24611663818359 125.3590087890625 C 25.51485252380371 125.3590087890625 24.92200088500977 125.9518432617188 24.92200088500977 126.68310546875 L 24.92200088500977 138.2140350341797 C 24.92200088500977 138.9452972412109 25.51485252380371 139.5381622314453 26.24611663818359 139.5381622314453 Z M 27.57023048400879 128.0070648193359 L 36.45204544067383 128.0070648193359 L 36.45204544067383 136.8897552490234 L 27.57023048400879 136.8897552490234 L 27.57023048400879 128.0070648193359 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-91.63, -94.79)" d="M 123.7559280395508 125.358024597168 L 112.6051177978516 125.358024597168 C 111.8738479614258 125.358024597168 111.2809982299805 125.9508666992188 111.2809982299805 126.68212890625 C 111.2809982299805 127.4133911132813 111.8738479614258 128.0062408447266 112.6051177978516 128.0062408447266 L 123.7559280395508 128.0062408447266 C 124.487190246582 128.0062408447266 125.0800552368164 127.4133911132813 125.0800552368164 126.68212890625 C 125.0800552368164 125.9508666992188 124.487190246582 125.358024597168 123.7559280395508 125.358024597168 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-91.63, -148.57)" d="M 123.7559280395508 190.6719970703125 L 112.6051177978516 190.6719970703125 C 111.8738479614258 190.6719970703125 111.2809982299805 191.2648315429688 111.2809982299805 191.9961242675781 C 111.2809982299805 192.7273712158203 111.8738479614258 193.3202514648438 112.6051177978516 193.3202514648438 L 123.7559280395508 193.3202514648438 C 124.487190246582 193.3202514648438 125.0800552368164 192.7273712158203 125.0800552368164 191.9961242675781 C 125.0800552368164 191.2648315429688 124.487190246582 190.6719970703125 123.7559280395508 190.6719970703125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-91.63, -121.68)" d="M 123.7559280395508 158.0110168457031 L 112.6051177978516 158.0110168457031 C 111.8738479614258 158.0110168457031 111.2809982299805 158.6038665771484 111.2809982299805 159.3351440429688 C 111.2809982299805 160.06640625 111.8738479614258 160.6592559814453 112.6051177978516 160.6592559814453 L 123.7559280395508 160.6592559814453 C 124.487190246582 160.6592559814453 125.0800552368164 160.06640625 125.0800552368164 159.3351440429688 C 125.0800552368164 158.6038665771484 124.487190246582 158.0110168457031 123.7559280395508 158.0110168457031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" />'
    '</g>'
    '</svg>';
