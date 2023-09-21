import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String userName;
  final String email;
  final String photoUrl;
  final String uid;
  final List followers;
  final List following;

  User(
      {required this.userName,
      required this.email,
      required this.photoUrl,
      required this.uid,
      required this.followers,
      required this.following});

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      userName: snapshot["username"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      photoUrl: snapshot["photoUrl"],
      followers: snapshot["followers"],
      following: snapshot["following"],
    );
  }

  Map<String, dynamic> toJson() => {
        "username": userName,
        "email": email,
        "uid": uid,
        "photoUrl": photoUrl,
        "followers": followers,
        "following": following
      };
}
