import 'package:flutter/material.dart';
import '../components/styles/gradiant_text.dart';
import '../components/text_field_input.dart';
import '../resources/auth_methods.dart';
import 'login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              style: TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 36,
                  fontWeight: FontWeight.w400),
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
              height: 14,
            ),
            TextFieldInput(
              hintText: 'И-мэйл',
              isPassword: false,
              textEditingController: _emailController,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 14,
            ),
            TextFieldInput(
              hintText: 'Нууц үг',
              isPassword: true,
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 14,
            ),
            TextFieldInput(
              hintText: 'Нууц үг давтах',
              isPassword: true,
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
            ),
            SizedBox(
              height: 48,
            ),
            InkWell(
              onTap: onSignUp,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('Бүртгүүлэх'),
              ),
            ),
            SizedBox(height: 24),
            Text(
              "Эсвэл",
              style: const TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                  height: 18 / 15),
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 12,
            ),
            Flexible(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Бүртгэлтэй юу? ",
                      style: const TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                        height: 18 / 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      child: Container(
                        child: GradientText("Нэвтрэх", 15),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
          ],
        ),
      )),
    );
  }

  void onSignUp() async {
    String result = await AuthMethods().signUpUser(
        email: _emailController.text,
        password: _passwordController.text,
        username: _userNameController.text);
    if (result == 'success') {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    } else {
      print('no success');
    }
  }
}
