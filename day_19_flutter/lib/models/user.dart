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

  Map<String, dynamic> toJson() => {
        "username": userName,
        "email": email,
        "uid": uid,
        "photoUrl": photoUrl,
        "followers": followers,
        "following": following
      };
}
