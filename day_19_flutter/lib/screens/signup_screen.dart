import 'dart:typed_data';

import 'package:day_17_flutter/resources/auth_methods.dart';
import 'package:day_17_flutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:day_17_flutter/components/text_field_input.dart';
import 'package:image_picker/image_picker.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Uint8List? _image;

  void selectImage() async {
    Uint8List image = await pickimage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Flexible(
              child: Container(),
              flex: 2,
            ),
            Text(
              'iCodegram',
              style: TextStyle(fontSize: 34),
            ),
            SizedBox(
              height: 24,
            ),
            Stack(
              children: [
                _image != null
                    ? CircleAvatar(
                        radius: 64,
                        backgroundImage: MemoryImage(_image!),
                      )
                    : CircleAvatar(
                        radius: 64,
                        backgroundImage: NetworkImage(
                            "https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png"),
                      ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    icon: Icon(Icons.add_a_photo),
                    onPressed: (selectImage),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 64,
            ),
            TextFieldInput(
              hintText: 'Хэрэглэгчийн нэр',
              isPassword: false,
              textEditingController: _userNameController,
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'И-мэйл',
              isPassword: false,
              textEditingController: _emailController,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'Нууц үг',
              isPassword: true,
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldInput(
              hintText: 'Нууц үг давтах',
              isPassword: true,
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                AuthMethods().signUpUser(
                    email: _emailController.text,
                    password: _passwordController.text,
                    username: _userNameController.text,
                    file: _image);
              },
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    color: Colors.blue),
                child: Text('Бүртгүүлэх'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
          ],
        ),
      )),
    );
  }
}
