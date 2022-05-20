class UserDetails {
  String? displayName;
  String? email;
  String? photoURL;

  //constructor
  UserDetails({this.displayName, this.email, this.photoURL});

//we need to create map
  UserDetails.fromJson(Map<String, dynamic> json) {
    displayName = json["displayName"];
    photoURL = json["photoURL"];
    email = json["email"];
  }
}
