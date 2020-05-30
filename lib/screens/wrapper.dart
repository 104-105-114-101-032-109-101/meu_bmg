import 'package:flutter/material.dart';
import 'package:meubmg/models/user.dart';
import 'package:meubmg/screens/homepage.dart';
import 'package:meubmg/screens/login.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null){
      return Authenticate();
    } else {
      return PginaInicial1();
    }
  }
}
