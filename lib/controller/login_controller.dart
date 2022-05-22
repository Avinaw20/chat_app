import 'package:chat_app/model/user_details.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController with ChangeNotifier {
//object
  var _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? googleSignInAccount;
  UserDetails? userDetails;

//function for google login
  googleLogin() async {
    this.googleSignInAccount = await _googleSignIn.signIn();

//inserting values to our user details model

    this.userDetails = new UserDetails(
      displayName: this.googleSignInAccount!.displayName,
      email: this.googleSignInAccount!.email,
      photoURL: this.googleSignInAccount!.photoUrl,
    );

//call
    notifyListeners();
  }

//logout

  logout() async {
    this.googleSignInAccount = await _googleSignIn.signOut();

    userDetails = null;
    notifyListeners();
  }
}
