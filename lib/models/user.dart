class User {
  final String uid;
  User({ this.uid });
}

class UserData {
  final String uid;
  final String name;
  final String email;
  final double level;
  final List transactions;

  UserData({ this.uid, this.name, this.email, this.level, this.transactions });
}
