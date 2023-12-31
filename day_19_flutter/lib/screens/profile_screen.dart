import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/user_provider.dart';
import 'package:day_17_flutter/models/user.dart' as models;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userName = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserName();
    addData();
  }

  void addData() async {
    UserProvider _userProvider = await Provider.of(context, listen: false);
    _userProvider.refreshUser();
  }

  void getUserName() async {
    DocumentSnapshot snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    print(snapshot.data());
  }

  @override
  Widget build(BuildContext context) {
    models.User user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      appBar: AppBar(title: Text('Navigation Bar Example'),),
      body: Center(
        child: Text(user.userName),
      ),
    );
  }
}
