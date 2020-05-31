import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'package:meubmg/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({ this.uid });

  final CollectionReference userCollection = Firestore.instance.collection('users');

  Future createUser(String name, String email) async {
    return await Firestore.instance.collection('users').document(uid).setData(
        { 'name': name, 'email': email, 'level': -1, 'transactions': randomTransactions() }
      );
  }
  Future updateLevel(double level) async {
    return await Firestore.instance.collection('users').document(uid).updateData({ 'level': level });
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      email: snapshot.data['email'],
      level: snapshot.data['level'],
      transactions: snapshot.data['transactions'].values.toList(),
    );
  }

  Stream<UserData> get userData {
    return userCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }
}

Map<String, double> randomTransactions() {
  var rng = new Random();
  Map<String, double> transactionsMap = new Map();
  List<double> transactionsList = new List.generate(8, (_) => 5 + rng.nextInt(200)/2);
  int index = 0;
  for (double transaction in transactionsList){
    index++;
    transactionsMap.addAll({index.toString(): transaction});
  }
  return transactionsMap;
}
