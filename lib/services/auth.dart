import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String> signInAnonymously();
  Future<String> currentUser();
}

class Auth implements BaseAuth {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String> signInAnonymously() async {
    FirebaseUser user = await firebaseAuth.signInAnonymously();
    return user.uid;
  }

  Future<String> currentUser() async {
    FirebaseUser user = await firebaseAuth.currentUser();
    return user.uid;
  }
}
