import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day_17_flutter/resources/storage_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:day_17_flutter/models/user.dart' as model;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _fireStore.collection('users').doc(currentUser.uid).get();
    return model.User.fromSnap(documentSnapshot);
  }

  Future<String> signUpUser(
      {required String email,
      required String password,
      required String username,
      required Uint8List? file,
      required String bio}) async {
    String result = 'Some error occured';
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        String photoUrl = await StorageMethods()
            .uploadImageToStorage('profilePics', file!, false);
        model.User user = model.User(
            userName: username,
            email: email,
            photoUrl: photoUrl,
            uid: credential.user!.uid,
            followers: [],
            following: []);
        _fireStore
            .collection('users')
            .doc(credential.user!.uid)
            .set(user.toJson());
        // _firestore.collection('users').doc(credential.user!.uid).set({
        //   'username': username,
        //   'uid': credential.user!.uid,
        //   'email': email,
        //   'bio': bio,
        //   'photoUrl': photoUrl,
        //   'following': [],
        //   'followers': [],
        result = 'success';
      } else {
        result = "Please enter all the fields";
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String result = 'Some error occurred';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        result = 'success';
      } else {
        result = "Please enter all the fields";
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
