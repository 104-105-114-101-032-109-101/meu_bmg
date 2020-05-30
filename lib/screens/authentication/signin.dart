import 'package:flutter/material.dart';
import 'package:meubmg/screens/authentication/register.dart';
import 'package:meubmg/screens/homepage.dart';
import 'firebase-auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor:  const Color(0xffff8f00),
          elevation: 0.0,
          title: Text('Entre na sua conta', style: TextStyle(fontSize: 18.0),),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person_add, color: Colors.white,),
              label: Text('Registrar', style: TextStyle(color: Colors.white)),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Register())),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Digite seu Email"
                  ),
                  validator: (val) => val.isEmpty ? 'Digite o seu endereço de email' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Digite sua Senha"
                  ),
                  obscureText: true,
                  validator: (val) => val.length < 6 ? 'Digite uma senha válida' : null,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                    color: const Color(0xffff8f00),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onPressed: () async {
                      if(_formKey.currentState.validate()){
                        dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                        setState((){
                          if(result == null) {error = 'Senha incorreta ou email inexistente';}
                          else{ Navigator.pushReplacement(context, MaterialPageRoute( builder: (context) => PginaInicial1()),); }
                        });
                      }
                    }
                ),
                SizedBox(height: 12.0),
                Text(error, style: TextStyle(color: Colors.red, fontSize: 14.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
