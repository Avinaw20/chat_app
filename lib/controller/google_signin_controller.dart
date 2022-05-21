import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInController with ChangeNotifier {
//object
  var googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;

//function for login
  login() async {
    this.googleSignInAccount = await googleSignIn.signIn();

//call
    notifyListeners();
  }

//function to signout
  logout() async {
//empty the value after signout
    this.googleSignInAccount = await googleSignIn.signOut();

//call
    notifyListeners();
  }
}
