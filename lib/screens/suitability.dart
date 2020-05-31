import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'authentication/database.dart';
import 'package:meubmg/models/user.dart';
import 'homepage.dart';

class Suitability extends StatefulWidget {
  @override
  _SuitabilityState createState() => _SuitabilityState();
}

class _SuitabilityState extends State<Suitability> {
  int _radioValue = -1;
  int _questionNumber = 0;
  List <int> _radioValues = [];
  double level = 0;
  List<List<String>> content = [["Qual a sua faixa etária?", "18-23 anos", "24-29 anos", "30-35 anos", "35+ anos"],
    ["Atualmente, você tem fonte de renda própria?", "Sim", "Não"],
    ["Seus hábitos de controle de gastos são:", "Bem planejados. Controlo e conheço todos os meus gastos", "Organizados na maior parte do tempo, mas às vezes fujo do planejamento", "Não tenho nenhum método para controlar e planejar minhas despesas"],
    ["Suponha que você tem R\$100 investidos num fundo, rendendo 2% ao ano. Depois de 5 anos, quanto dinheiro você terá neste fundo?", "Mais que R\$102", "Exatamente R\$102", "Menos que R\$102", "Não sei"],
    ["Imagine que a sua poupança rende 1% ao ano e a inflação anual é de 2%. Daqui a um ano, o dinheiro que você tem na conta vai valer:", "Mais do que vale hoje", "O mesmo que vale hoje", "Menos do que vale hoje", "Não sei"],
    ["Quando há uma redução da taxa Selic, os rendimentos da poupança e do tesouro direto:", "Aumentam", "Diminuem", "Não sei"],
    ["Um produto parcelado em 15 meses tem prestações mais caras do que um produto parcelado em 30 meses, mas a taxa de juros costuma ser menor quando há menos parcelas.", "Verdadeiro", "Falso", "Não sei"],
    ["Suponha que você tem uma dívida de R\$1.000 com taxa de juros composta de 20% ao ano. Se você não pagar a dívida, quantos anos serão necessários para que sua dívida duplique?", "Menos de 2 anos", "De 2 a 4 anos", "De 5 a 9 anos", "Não sei"],];
  List<List<int>> scores = [[-1,0,0,0],[3,-1],[2,1,-2],[0,-2,-2,-1],[-1,-1,1,0],[-1,2,0],[1,-2,-1],[0,2,-1,0]];

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
                        'Teste seus conhecimentos',
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
        level = 3*(level+11)/22;
        await DatabaseService(uid: user.uid).updateLevel(level);
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => PginaInicial1()),
        );
      } else {
        setState(() { _radioValue = -1; });
      }
    }
  }
}
