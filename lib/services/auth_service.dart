// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/screens/homescreen.dart';
import 'package:recipe_app/services/variable_service.dart';

class AuthService {
  final userCollection = FirebaseFirestore.instance.collection("users");
  final firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp(BuildContext context,
      {required String name,
      required String email,
      required String password}) async {
    final navigator = Navigator.of(context);
    try {
      final UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      Provider.of<VariableService>(context, listen: false).userName = name;
      Provider.of<VariableService>(context, listen: false).userEmail = email;

      if (userCredential.user != null) {
        _registerUser(name: name, email: email, password: password);

        navigator.push(MaterialPageRoute(builder: (context) => HomeSreen()));
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message!);
    }
  }

  Future<void> signIn(BuildContext context,
      {required String email, required String password}) async {
    final navigator = Navigator.of(context);
    try {
      final UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      Provider.of<VariableService>(context, listen: false).userEmail = email;
      Provider.of<VariableService>(context, listen: false).userName =
          userCredential.user!.displayName.toString();

      if (userCredential.user != null) {
        //  DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
        //   .collection("users")
        //   .doc(userCredential.user!.uid)
        //   .get();

        //    String userName = userSnapshot.get("name");

        //    Provider.of<VariableService>(context, listen: false).userName = userName;

        navigator.push(MaterialPageRoute(builder: (context) => HomeSreen()));
        Fluttertoast.showToast(
            msg: "LOGIN SUCCESSFULLY", toastLength: Toast.LENGTH_LONG);
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message!, toastLength: Toast.LENGTH_LONG);
    }
  }

  Future<void> _registerUser(
      {required String name,
      required String email,
      required String password}) async {
    await userCollection
        .doc()
        .set({"email": email, "name": name, "password": password});
  }

  Future<User?> signInWithGoogle() async {
    // Oturum açma sürecini başlat
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // Süreç içerisinden bilgileri al
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // Kullanıcı nesnesi oluştur
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);

    // Kullanıcı girişini sağla
    final UserCredential userCredential =
        await firebaseAuth.signInWithCredential(credential);
    log(userCredential.user!.email.toString());
    return userCredential.user;
  }
}
