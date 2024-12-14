import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:futebola_frontend/player.dart';

import 'firebase_options.dart';

class ApplicationStatePlayer extends ChangeNotifier {
  ApplicationStatePlayer() {
    init();
  }

  bool _loggedIn = true;

  bool get loggedIn => _loggedIn;

  StreamSubscription<QuerySnapshot>? _playerSubscription;
  List<Object> _players = [];

  List<Object> get players => _players;

  Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]);

    FirebaseAuth.instance.userChanges().listen((user) {
      // if (user != null) {
      //   _loggedIn = true;
      _playerSubscription = FirebaseFirestore.instance
          .collection('players')
          .snapshots()
          .listen((snapshot) {
        _players = [];
        for (final document in snapshot.docs) {
          print(document.data());
          _players.add(
              document.data()['name']
            // Player(
            //   uuid: document.id,
            //   id: document.data()['id'],
            //   name: document.data()['name'],
            //   position: document.data()['position'],
            // ),
          );
        }
        notifyListeners();
      });
      // } else {
      //   _loggedIn = false;
      //   _players = [];
      //   _playerSubscription?.cancel();
      // }
      notifyListeners();
    });
  }
}
