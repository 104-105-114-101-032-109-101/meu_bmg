import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Suitability extends StatefulWidget {
  @override
  _SuitabilityState createState() => _SuitabilityState();
}

class _SuitabilityState extends State<Suitability> {
  int _radioValue = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      print(value);
      _radioValue = value;
      switch (_radioValue) {
        case 0:
          Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
        break;
        case 1:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
        break;
        case 2:
          Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
        break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> content = ["Menos que a inflação","Mais que a inflação","Continua sendo roubo do mesmo jeito. Este texto é longo de propósito, o Estado devia cair, imposto é roubo"];
    return
      SafeArea(
        child: new MaterialApp(
          home: new Scaffold(
            appBar: AppBar(
              title: new Text('Teste seus conhecimentos'),
              centerTitle: true,
              backgroundColor: const Color(0xffff8f00),
            ),
            body: new Container(
              padding: EdgeInsets.all(8.0),
              child: new Column(
                children: <Widget>[
                  new Padding( padding: new EdgeInsets.all(18.0) ),
                  new Text(
                    'Quanto rende o FGTS?',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 30),
                  for ( int i=0; i<content.length; i++ )
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.all(18.0),
                        ),
                        new Radio(
                          value: i,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange1,
                        ),
                        new Container (
                          width: MediaQuery.of(context).size.width*0.65,
                          child: new Text (content[i], textAlign: TextAlign.left),
                        )
                      ],
                    ),

                  Transform.translate(
                    // TODO: change to querysize minus x or to percentage of it
                    offset: Offset(130.0, 180.0),
                    child: Ink(
                      decoration: const ShapeDecoration(
                      color: const Color(0xffff8f00),
                      shape: CircleBorder(),
                    ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        color: Colors.white,
                        onPressed: () {print("Hello");},
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

  void resetSelection() {
    _handleRadioValueChange1(-1);
  }

  void validateAnswers() {
    if (_radioValue == -1) {
      Fluttertoast.showToast(msg: 'Please select atleast one answer',
      toastLength: Toast.LENGTH_SHORT);
      } else {
        Fluttertoast.showToast(
          msg: 'Your total score is: 3 out of 5',
          toastLength: Toast.LENGTH_LONG);
      }
  }
}
