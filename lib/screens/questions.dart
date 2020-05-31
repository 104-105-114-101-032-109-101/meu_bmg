import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'authentication/database.dart';
import 'package:meubmg/models/user.dart';
import 'homepage.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  int _radioValue = -1;
  int _questionNumber = 0;
  List <int> _radioValues = [];
  double level = 0;
  List<List<String>> content = [["Quem mais se aproveita dos ativos de renda variável?", "Perfil conservador, que busca segurança de patrimônio a curto e longo prazo", "Perfil moderado, ganhos consistentes", "Perfil que busca maiores juros, em detrimento de maior fator de risco"],
    ["Quem investe em ações, via de regra, busca lucro a curtíssimo prazo", "Verdadeiro", "Falso"],
    ["O mercado imobiliário brasileiro encontra-se em franca ascensão, pela expansão de crédito no setor", "Verdadeiro", "Falso"],
    ["Dos títulos de renda fixa, selecione aqueles que apresentam maiores rendimentos: ", "Poupança, CDB", "Letras de crédito", "Tesouro direto"],];
  List<List<int>> scores = [[0,0,1],[0,1],[1,0],[0,1,0]];

  void _handleRadioValueChange(int value) {setState(() {_radioValue = value;});}

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return
      SafeArea(
        child: new MaterialApp(
            home: new Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(screenHeight * 0.06),
                  child: AppBar(
                    title: Column(
                      children: <Widget>[ Transform.translate(
                          offset: Offset(0.0, -screenHeight * 0.02),
                          child: new Text(
                              'Questionário',
                              textAlign: TextAlign.center,
                              style: new TextStyle( fontSize: 20.0, )
                          )
                      )
                      ],
                    ),
                    centerTitle: true,
                    backgroundColor: const Color(0xffff8f00),
                  ),
                ),
                body: new Container(
                    child: new Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          new Padding( padding: new EdgeInsets.only(top: 25.0, bottom: 18.0) ),
                          new Container (
                            width: screenWidth*0.65,
                            child: new Text(
                              content[_questionNumber][0],
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 45),
                          for ( int i=1; i<content[_questionNumber].length; i++ )
                            new Row(
                              children: <Widget>[
                                new Padding(
                                  padding: new EdgeInsets.all(18.0),
                                ),
                                new Radio(
                                  activeColor: const Color(0xffff8f00),
                                  value: i,
                                  groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                ),
                                new Container (
                                  width: screenWidth*0.65,
                                  child: new Text (content[_questionNumber][i], textAlign: TextAlign.left),
                                )
                              ],
                            ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child:
                              Transform.translate(
                                offset: Offset(-12, -12),
                                child:
                                Ink(
                                  decoration: const ShapeDecoration(
                                    color: const Color(0xffff8f00),
                                    shape: CircleBorder(),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_forward_ios),
                                    color: Colors.white,
                                    onPressed: () {nextQuestion(content.length, user);},
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]
                    )
                )
            )
        ),
      );
  }

  void nextQuestion(lastQuestionIndex, user) async {
    if (_radioValue == -1) {
      Fluttertoast.showToast(msg: 'Selecione uma resposta',
          toastLength: Toast.LENGTH_SHORT);
    } else {
      level += scores[_questionNumber][_radioValue-1];
      _radioValues.add(_radioValue);
      _questionNumber += 1;
      if (_questionNumber == lastQuestionIndex) {
        Firestore.instance.collection('users').document(user.uid)
            .get().then((docSnap) => DatabaseService(uid: user.uid)
            .updateLevel(0.01*level + docSnap.data['level']));

        Fluttertoast.showToast(msg: "Você acertou $level questões!", toastLength: Toast.LENGTH_SHORT);

        Navigator.push(context, MaterialPageRoute(builder: (context) => PginaInicial1()),);
      } else {
        setState(() { _radioValue = -1; });
      }
    }
  }
}
